extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for w in Consts.has_picture:
		if w.to_lower() in Consts.matched_words:
			var ind = %MatchedList.add_item(w.to_upper(), null, false)
			%MatchedList.set_item_tooltip_enabled(ind, false)
		else:
			var ind = %MatchedList.add_item("????", null, false)
			%MatchedList.set_item_tooltip_enabled(ind, false)
			#%MatchedList.add_item("????", null, false)


func _input(event):
	if not event is InputEventKey:
		return
	if not event.is_pressed():
		return
	elif event.keycode == KEY_TAB:
		get_tree().change_scene_to_file("res://main.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


