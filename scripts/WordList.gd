extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var shinyCount = 0
	for w in Consts.has_picture:
		if w.to_lower() in Consts.matched_words:
			if w.to_lower() in Consts.shines:
				shinyCount += 1
			var ind = %MatchedList.add_item(w.to_upper(), null, false)
			%MatchedList.set_item_tooltip_enabled(ind, false)
		else:
			var ind = %MatchedList.add_item("????", null, false)
			%MatchedList.set_item_tooltip_enabled(ind, false)
			#%MatchedList.add_item("????", null, false)
	%ImageCounter.text = "Imagens encontradas: {a}/{b}".format({"a": len(Consts.matched_words), "b": len(Consts.has_picture)})
	%ShinyCounter.text = "[rainbow]Shiny encontrados: {a}/{b}[/rainbow]".format({"a": shinyCount, "b": len(Consts.shines)}) 

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


