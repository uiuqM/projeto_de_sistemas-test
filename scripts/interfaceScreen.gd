extends CanvasLayer
class_name interface

const DIALOGO: PackedScene = preload("res://scenes/start_screen_scenes/first_phase_screen_scenes/dialago.tscn")


func spaw_dialogo(dialogo_text_list:Array) -> void:
		var dialogo: dialago = DIALOGO.instance()
		dialogo.dialogo_text_list = dialogo_text_list
		add_child(dialogo)
