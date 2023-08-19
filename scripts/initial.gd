extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Consts.load_save()


func start_game() -> void:
	var game_scene: PackedScene = load("res://scenes/main.tscn")
	get_tree().change_scene_to_packed(game_scene)


func show_how_to_play() -> void:
	$Control/Popup.popup_centered()


func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_pressed():
		return
	if event.keycode == KEY_F11:
		if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
