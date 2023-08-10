extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Consts.load_save()

	$Control/ButtonStart.pressed.connect(start_game)
	$Control/ButtonReset.pressed.connect(reset)
	$Control/ButtonHowToPlay.pressed.connect(show_how_to_play)


func start_game() -> void:
	var game_scene: PackedScene = load("res://main.tscn")
	get_tree().change_scene_to_packed(game_scene)


func show_how_to_play() -> void:
	$Control/Popup.popup_centered()


func reset() -> void:
	var dialog = ConfirmationDialog.new()
	dialog.title = "Resetar Progresso?"
	dialog.ok_button_text = "Sim"
	dialog.cancel_button_text = "Não"
	dialog.size = Vector2(1, 1)
	add_child(dialog)
	dialog.popup_centered()
	dialog.confirmed.connect(Consts.reset_progress)


func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_pressed():
		return
	if event.keycode == KEY_F11:
		if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
