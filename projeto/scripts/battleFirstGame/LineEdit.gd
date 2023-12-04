extends LineEdit

var regex = RegEx.new()
var oldtext = ""

signal enter_pressed(value)
signal space_pressed()

func _ready():
	regex.compile("^-?[0-9]*$")

func _on_LineEdit_text_changed(new_text):
	if regex.search(new_text):
		text = new_text   
		oldtext = text
	else:
		text = oldtext
	set_cursor_position(text.length())

func get_value():
	return(int(text))
	
func _on_LineEdit_text_entered(text):
	var value = get_value()
	emit_signal("enter_pressed", value)

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_SPACE and event.pressed:
			print("Espaço pressionado!")
			emit_signal("space_pressed")


