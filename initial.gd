extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Consts.load_save()
	
	$Control/Button.pressed.connect(start_game)
	$Control/Button2.pressed.connect(func(): Consts.matched_words = []; Consts.save_game())

func start_game() -> void:
	var game_scene :PackedScene = load("res://main.tscn")
	get_tree().change_scene_to_packed(game_scene)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
