extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("modo - domo ", is_valid_word("modo", "domo"))
	print("vaca - cava ", is_valid_word("vaca", "cava"))
	print("modo - amor ", is_valid_word("modo", "amor"))
	print("alva - alvo ", is_valid_word("alva", "alvo"))
	print("alvo - alva ", is_valid_word("alvo", "alva"))
	print("modo - moda ", is_valid_word("modo", "moda"))
	print("maca - cara ", is_valid_word("maca", "cara"))
	new_valid_word(Consts.current_word)
	print("current: ", Consts.current_word)
	%WordInput.grab_focus()


func _process(delta: float) -> void:
	pass


func _input(event):
	if not event is InputEventKey:
		return
	if not event.is_pressed():
		return
	if not (event.as_text_key_label() in Consts.permited_chars):
		return
	var current: String = %TextField.text
	var text = current

	if event.keycode == KEY_BACKSPACE:
		text = current.erase(current.length() - 1)
	elif event.keycode == KEY_TAB:
		print("Current Matched Words: ", Consts.matched_words)
	else:
		if current.length() < 4:
			var key = event.as_text_key_label()
			text = current + key

	%TextField.set_text("%s" % text)
	#print(is_valid_word(current_word, text))


func is_valid_word(current: String, check: String) -> bool:
	current = current.to_lower()
	check = check.to_lower()
	var check_with_accents = check
	var current_with_accents = current
	var ts = TextServerManager.get_primary_interface()
	check = ts.strip_diacritics(check)
	current = ts.strip_diacritics(current)

	print("Input: current = ", current, " check = ", check)

	if current_with_accents == check_with_accents || (not Consts.words.has(check_with_accents)):
		print("Current and check are the same word OR CHECK word does not exist")
		return false
	if Consts.debug:
		return true
	var sorted_current_letters = Array(current.split())
	var sorted_check_letters = Array(check.split())
	sorted_current_letters.sort()
	sorted_check_letters.sort()

	#print("Sorted current letters:", sorted_current_letters)
	#print("Sorted check letters:", sorted_check_letters)

	if sorted_current_letters == sorted_check_letters:
		print("Words are alphabetically sorted permutations.")
		return true

	var current_split = Array(current.split())
	var check_split = Array(check.split())

	#print("current letters:", current_split)
	#print("check letters:", check_split)

	#var diff = check_split.filter(func(x): return not current_split.has(x))
	var diff_array := []
	for i in range(check_split.size()):
		if check_split[i] != current_split[i]:
			diff_array.append(check_split[i])

	#print("Diff array:", diff_array)
	#print("Different letters:", diff)

	if diff_array.size() <= 1:
		print("Words have only one or fewer different letters.")
		return true
	else:
		print("Words are not valid.")
		return false


func _on_line_edit_text_submitted(new_text: String) -> void:
	var valid := is_valid_word(Consts.current_word, new_text)
	if valid == true:
		new_valid_word(new_text)
	else:
		var tween = create_tween()
		var old_pos: Vector2 = Vector2(168, 224)
		tween.set_ease(Tween.EASE_IN_OUT)
		play_audio("res://audios/wrong.mp3")
		tween.tween_property(%WordInput, "modulate", Color.RED, 0.01)
		tween.tween_property(
			%WordInput,
			"position",
			Vector2(%WordInput.position["x"] - 3, %WordInput.position["y"]),
			0.05
		)
		tween.tween_property(
			%WordInput,
			"position",
			Vector2(%WordInput.position["x"] + 3, %WordInput.position["y"]),
			0.05
		)
		tween.tween_property(%WordInput, "position", old_pos, 0.05)
		tween.tween_property(%WordInput, "modulate", Color.WHITE, 0.2)
		#$Container/LineEdit.set_position(old_pos)
		#tween.tween_property(, "modulate", Color.RED, 1)
		#tween.tween_property(textLabel, "scale", Vector2(1,1), 1)
		#tween.tween_callback($Sprite.queue_free)


func new_valid_word(word: String) -> void:
	if not word in Consts.matched_words:
		if not word in Consts.has_picture:
			play_audio("res://audios/new.mp3", 0.8, 1.2)
		var ind = %ItemList.add_item(word.to_upper(), null, false)
		%ItemList.set_item_tooltip_enabled(ind, false)

	show_word_with_picture(word)
	print("New WORD! ", Consts.current_word)


func _on_item_list_item_clicked(index: int, at_position: Vector2, mouse_button_index: int) -> void:
	if mouse_button_index == 1:
		%WordInput.grab_focus()
		show_word_with_picture(%ItemList.get_item_text(index))


func show_word_with_picture(word: String):
	if word.to_lower() in Consts.has_picture:
		if not word.to_lower() in Consts.matched_words:
			Consts.matched_words.append(word.to_lower())
			play_audio("res://audios/image.mp3", 1, 1)
		var texture = load("res://sprites/%s.webp" % word.to_lower().to_lower())
		%WordStatus.visible = true
		%Image.texture = texture
		var tween = create_tween()
		tween.set_ease(Tween.EASE_OUT)
		tween.set_trans(Tween.TRANS_BOUNCE)
		tween.tween_property(%Image, "scale", Vector2(0.2, 0.2), 0.5)
		if word.to_lower() in Consts.shines:
			var glow_shader = load("res://shaders/rainbow.gdshader")
			%Image.material = ShaderMaterial.new()
			%Image.material.shader = glow_shader
		else:
			var outline_shader = load("res://shaders/outline.gdshader")
			%Image.material = ShaderMaterial.new()
			%Image.material.shader = outline_shader
	else:
		var tween = create_tween()
		tween.set_ease(Tween.EASE_OUT)
		tween.set_trans(Tween.TRANS_BOUNCE)
		tween.tween_property(%Image, "scale", Vector2(0, 0), 0.5)
		tween.finished.connect(func(): %Image.texture = null)
		#%Image.texture = null
		%WordStatus.visible = false
		#tween.tween_property(, "modulate", Color.RED, 1)
		#tween.tween_property(textLabel, "scale", Vector2(1,1), 1)
		#tween.tween_callback($Sprite.queue_free)
	Consts.current_word = word
	%CurrentWordField.set_text(Consts.current_word)


func play_audio(audio_file: String, rangemax = 1.0, rangemin = 0.8):
	var audioPlayer := AudioStreamPlayer.new()
	#audioPlayer.bus = load("res://default_bus_layout.tres")
	var stream = load(audio_file)
	randomize()
	var random_pitch = randf_range(rangemin, rangemax)
	audioPlayer.pitch_scale = random_pitch
	audioPlayer.stream = stream
	audioPlayer.finished.connect(func(): audioPlayer.queue_free())
	add_child(audioPlayer)
	audioPlayer.play()
