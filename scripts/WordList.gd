extends Control

var shinyCount = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	words_builder()

	%ImageCounter.text = "Imagens encontradas: {a}/{b}".format(
		{"a": len(Consts.matched_words), "b": len(Consts.has_picture)}
	)
	%ShinyCounter.text = "[rainbow]Shiny encontrados: {a}/{b}[/rainbow]".format(
		{"a": shinyCount, "b": len(Consts.shines)}
	)


func word_node(text: String, color: Color = Color.WHITE) -> Label:
	var w = Label.new()
	w.text = text
	w.add_theme_font_size_override("font_size", 50)
	w.add_theme_color_override("font_color", color)
	return w	


func words_builder() -> void:
	var sorted = Consts.has_picture.duplicate()
	sorted.sort()
	var nodes: Array[Node] = []

	for w in sorted:
		if w.to_lower() in Consts.matched_words:
			if w.to_lower() in Consts.shines:
				shinyCount += 1
			nodes.append(word_node(w.to_upper()))
		else:
			nodes.append(word_node("????"))

	var hbox: HBoxContainer = null

	for n in nodes:
		if (hbox == null):
			hbox = HBoxContainer.new()
			hbox.add_theme_constant_override("separation", 50)
		if len(hbox.get_children()) >= 5:
			%VBox.add_child(hbox)
			hbox = HBoxContainer.new()
			hbox.add_theme_constant_override("separation", 50)
		hbox.add_child(n)


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
