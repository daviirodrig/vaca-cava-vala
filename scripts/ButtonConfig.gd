extends Button


func reset() -> void:
	var dialog = ConfirmationDialog.new()
	dialog.title = "Resetar Progresso?"
	dialog.ok_button_text = "Sim"
	dialog.cancel_button_text = "Não"
	dialog.size = Vector2(1, 1)
	add_child(dialog)
	dialog.popup_centered()
	dialog.confirmed.connect(Consts.reset_progress)


func _on_button_config_pressed() -> void:
	%VolumeSlider.set_value_no_signal(db_to_linear(AudioServer.get_bus_volume_db(Consts._bus))*100)
	%ConfigPopup.popup_centered()


func _on_volume_slider_value_changed(value: float) -> void:
	value = value / 100
	AudioServer.set_bus_volume_db(Consts._bus, linear_to_db(value))
	Consts.volume = value
	Consts.save_game()
