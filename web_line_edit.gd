extends Node

@onready var parent: LineEdit = get_parent() as LineEdit

var _on_key_callback = JavaScriptBridge.create_callback(_on_key)
var _on_focus_callback = JavaScriptBridge.create_callback(_on_focus)


func _ready():
	if not OS.has_feature('web'):
		queue_free()
		
	JavaScriptBridge.eval("""
		var hiddenInput = document.createElement('input');
		hiddenInput.type = 'text';
		hiddenInput.style.position = 'absolute';
		//hiddenInput.style.opacity = 1;
		document.body.appendChild(hiddenInput);
	""", true)
	
	var hiddenInput = JavaScriptBridge.get_interface("hiddenInput")
	hiddenInput.oninput = _on_key_callback
	hiddenInput.onfocus = _on_focus_callback
	parent.item_rect_changed.connect(on_item_rect_changed)
#	parent.focus_entered.connect(on_focus_entered)


func _unhandled_key_input(event):
	JavaScriptBridge.eval("console.log('{event}')".format({'event': event}))

func on_item_rect_changed():
	update_input.call_deferred()

func on_focus_entered():
	parent.release_focus()
	parent.theme_type_variation = "focus"
	return JavaScriptBridge.eval("hiddenInput.focus()", true)
	

func get_text():
	return JavaScriptBridge.eval("hiddenInput.value", true)


func update_input():
	JavaScriptBridge.eval("""
			hiddenInput.style.top = '10px';
			hiddenInput.style.left = '{left}px';
			hiddenInput.style.height = '{height}px';
			hiddenInput.style.width = '{width}px';
		""".format({
			'top': parent.global_position.y,
			'left': parent.global_position.x,
			'height': parent.size.y,
			'width': parent.size.x,
		}), true)


func _on_key(e):
	parent.text = get_text()
	parent.caret_column = parent.text.length() - 1


func _on_focus(e):
	pass
#	parent.grab_click_focus.call_deferred()

func _exit_tree():
	JavaScriptBridge.eval("hiddenInput.remove()")
