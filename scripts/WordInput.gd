extends LineEdit

signal valid_word(word: String)


func is_valid_word(current: String, check: String) -> bool:
	current = current.to_lower()
	check = check.to_lower()
	var check_with_accents = check
	var current_with_accents = current
	var ts = TextServerManager.get_primary_interface()
	check = ts.strip_diacritics(check)
	current = ts.strip_diacritics(current)

	print("Input: current = ", current, " check = ", check)

	if current_with_accents == check_with_accents || (not Consts.words().has(check_with_accents)):
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


func _on_text_submitted(new_text: String) -> void:
	var valid := is_valid_word(Consts.current_word, new_text)
	if valid == true:
		emit_signal("valid_word", new_text)
		#new_valid_word(new_text)
	else:
		var tween = create_tween()
		var old_pos: Vector2 = Vector2(440, 600)
		tween.set_ease(Tween.EASE_IN_OUT)
		play_audio("res://audios/wrong.mp3", 1.0, 0.8, -8)
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


func play_audio(audio_file: String, rangemax = 1.0, rangemin = 0.8, volume: float = 0):
	var audioPlayer := AudioStreamPlayer.new()
	audioPlayer.volume_db = volume
	var stream = load(audio_file)
	randomize()
	var random_pitch = randf_range(rangemin, rangemax)
	audioPlayer.pitch_scale = random_pitch
	audioPlayer.stream = stream
	audioPlayer.finished.connect(func(): audioPlayer.queue_free())
	add_child(audioPlayer)
	audioPlayer.play()
