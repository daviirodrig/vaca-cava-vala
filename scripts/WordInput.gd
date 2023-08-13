extends LineEdit

signal valid_word(word: String)

func _ready() -> void:
	_web_input()


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

var _on_key_callback = JavaScriptBridge.create_callback(_on_key)
var _on_focus_callback = JavaScriptBridge.create_callback(_on_focus)
var _on_submit_callback = JavaScriptBridge.create_callback(_on_submit)

func _on_submit():
	print('aqui')
	_on_text_submitted(_get_text())
	print('passo')
	#emit_signal("text_submitted", _get_text())

	
func _on_focus(e):
	pass
#	parent.grab_click_focus.call_deferred()

func _on_key(e):
	self.text = _get_text()
	self.caret_column = self.text.length() - 1

func _get_text():
	return JavaScriptBridge.eval("hiddenInput.value", true)


func _web_input():
	if not OS.has_feature('web'):
		return
	
	self.focus_mode = Control.FOCUS_NONE
	
	JavaScriptBridge.eval("""
		var hiddenInput = document.getElementById('wordInput') || document.createElement('input');
		hiddenInput.type = 'text';
		hiddenInput.id = 'wordInput';
		hiddenInput.maxLength = 4
		hiddenInput.style.position = 'absolute';
		//hiddenInput.style.opacity = 0.0001;
		//hiddenInput.style.display = 'none';
		document.body.appendChild(hiddenInput);
		hiddenInput.onblur = ()=>{hiddenInput.focus()}
		hiddenInput.focus();
		hiddenInput.onkeydown = (e) => {
			if(e.key == 'Tab'){
			e.preventDefault();
			hiddenInput.callKeyDown();
			}
			else if(e.key == 'Enter'){
			e.preventDefault();
			console.log('Enter');
			hiddenInput.callEnter();
			}
		}
	""", true)
	
#	JavaScriptBridge.get_interface("document").querySelector('body').addEventListener('keyup', _js_wordlist)
#
#	JavaScriptBridge.eval("""
#	document.querySelector('body').addEventListener('keyup', (e)=>{
#		if (e.keycode == 9) {
#			//call godot
#			console.log("get it here")
#		}
#	})
#
#	""", true)
	
	var hiddenInput = JavaScriptBridge.get_interface("hiddenInput")
	hiddenInput.oninput = _on_key_callback
	hiddenInput.callEnter = Consts._on_submit_callback
	hiddenInput.callKeyDown = Consts._on_keydown_callback
	hiddenInput.onfocus = _on_focus_callback
	self.item_rect_changed.connect(on_item_rect_changed)
	#self.focus_entered.connect(func():self.release_focus();JavaScriptBridge.eval("hiddenInput.focus()", true))

func update_input():
	JavaScriptBridge.eval("""
			hiddenInput.style.top = '10px';
			hiddenInput.style.left = '{left}px';
			hiddenInput.style.height = '{height}px';
			hiddenInput.style.width = '{width}px';
		""".format({
			'top': self.global_position.y,
			'left': self.global_position.x,
			'height': self.size.y,
			'width': self.size.x,
		}), true)

func on_item_rect_changed():
	update_input.call_deferred()


#func _on_focus_entered() -> void:
#	JavaScriptBridge.eval('hiddenInput.focus()')
