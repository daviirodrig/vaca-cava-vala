extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	print("modo - domo ", is_valid_word("modo", "domo"))
#	print("vaca - cava ", is_valid_word("vaca", "cava"))
#	print("modo - amor ", is_valid_word("modo", "amor"))
#	print("alva - alvo ", is_valid_word("alva", "alvo"))
#	print("alvo - alva ", is_valid_word("alvo", "alva"))
#	print("modo - moda ", is_valid_word("modo", "moda"))
#	print("maca - cara ", is_valid_word("maca", "cara"))
#	Consts.load_save()
	setup()
	print("current: ", Consts.current_word)
	if not OS.has_feature("web"):
		%WordInput.grab_focus()


func setup() -> void:
	%WordStatus.visible = false
	for w in Consts.screen_list:
		var ind = %ItemList.add_item(w.to_upper(), null, false)
		%ItemList.set_item_tooltip_enabled(ind, false)
	show_word_with_picture(Consts.current_word)


func _process(delta: float) -> void:
	pass


func _input(event):
	if not event is InputEventKey:
		return
	if not event.is_pressed():
		return
	if not (event.as_text_key_label() in Consts.permited_chars):
		return
	elif event.keycode == KEY_ESCAPE:
		get_tree().change_scene_to_file("res://initial.tscn")
	elif event.keycode == KEY_TAB:
		get_tree().change_scene_to_file("res://WordListScene.tscn")
		print("Current Matched Words: ", Consts.matched_words)
	elif event.keycode == KEY_UP:
		print("column ", %WordInput.caret_column)
		print("len ", len(%WordInput.text)-1)
		%WordInput.caret_column = len(%WordInput.text)-1
		print("new_column ", %WordInput.caret_column)
		var index = Consts.screen_list.size()-2
		if not index < 0:
			word_up(index)
			%WordInput.grab_focus()
	#print(is_valid_word(current_word, text))


func _on_word_input_valid_word(word: String) -> void:
	Consts.screen_list.append(word.to_lower())
	var ind = %ItemList.add_item(word.to_upper(), null, false)
	%ItemList.set_item_tooltip_enabled(ind, false)
	var b = %ItemList.get_v_scroll_bar()
	b.allow_greater = true
	b.value = b.max_value - 650
	if not word in Consts.has_picture:
		play_audio("res://audios/new.mp3", 0.8, 1.2, 2)

	show_word_with_picture(word)
	print("New WORD! ", Consts.current_word)

func word_up(index: int):
	var to_remove = Consts.screen_list.size() - (index+1)
	if to_remove < 0:
		to_remove = 0
	for i in range(to_remove):
		var index_remove = Consts.screen_list.size()-1
		var text_remove = %ItemList.get_item_text(index_remove).to_lower()
		Consts.screen_list.erase(text_remove)
		%ItemList.remove_item(index_remove)
		Consts.save_game()
	%WordInput.grab_focus()
	show_word_with_picture(%ItemList.get_item_text(index))

func _on_item_list_item_clicked(index: int, at_position: Vector2, mouse_button_index: int) -> void:
	if mouse_button_index != 1:
		return
	word_up(index)
	%WordInput.grab_focus()


func show_word_with_picture(word: String):
	var tween = create_tween()
	if word.to_lower() in Consts.has_picture:
		if not word.to_lower() in Consts.matched_words:
			Consts.matched_words.append(word.to_lower())
			if word.to_lower() in Consts.revealed_words:
				Consts.revealed_words.erase(word.to_lower())
				var w1 = Consts.new_revealed_word()
				if w1 != null:
					Consts.revealed_words.append(Consts.new_revealed_word())
			Consts.save_game()
			play_audio("res://audios/image.mp3", 1, 1)
		var texture = load("res://sprites/%s.webp" % word.to_lower().to_lower())
		%WordStatus.visible = true
		%Image.texture = texture
		#var tween = create_tween()
		#tween.stop()
		tween.set_ease(Tween.EASE_OUT)
		tween.set_trans(Tween.TRANS_BOUNCE)
		tween.tween_property(%Image, "scale", Vector2(0.7, 0.7), 0.5)
		if word.to_lower() in Consts.shines:
			var glow_shader = load("res://shaders/rainbow.gdshader")
			%Image.material = ShaderMaterial.new()
			%Image.material.shader = glow_shader
		else:
			var outline_shader = load("res://shaders/outline.gdshader")
			%Image.material = ShaderMaterial.new()
			%Image.material.shader = outline_shader
	else:
		if not word.to_lower() in Consts.matched_words:
			Consts.matched_words.append(word.to_lower())
			Consts.save_game()
		#tween = create_tween()
		tween.set_ease(Tween.EASE_OUT)
		tween.set_trans(Tween.TRANS_BOUNCE)
		tween.tween_property(%Image, "scale", Vector2(0, 0), 0.5)
		#tween.finished.connect(func(): %Image.texture = null)
		#%Image.texture = null
		%WordStatus.visible = false
		#tween.tween_property(, "modulate", Color.RED, 1)
		#tween.tween_property(textLabel, "scale", Vector2(1,1), 1)
		#tween.tween_callback($Sprite.queue_free)
	Consts.current_word = word
	Consts.save_game()
	%CurrentWordField.set_text(Consts.current_word)


func play_audio(audio_file: String, rangemax = 1.0, rangemin = 0.8, volume: float = 0):
	var audioPlayer := AudioStreamPlayer.new()
	audioPlayer.volume_db = volume
	#audioPlayer.bus = load("res://default_bus_layout.tres")
	var stream = load(audio_file)
	randomize()
	var random_pitch = randf_range(rangemin, rangemax)
	audioPlayer.pitch_scale = random_pitch
	audioPlayer.stream = stream
	audioPlayer.finished.connect(func(): audioPlayer.queue_free())
	add_child(audioPlayer)
	audioPlayer.play()
