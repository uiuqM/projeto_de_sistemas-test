extends CanvasLayer
class_name interface

const DIALOGO: PackedScene = preload("res://scenes/start_screen_scenes/second_phase_screen_scenes/battle-2/dialago-1.tscn")



func spaw_dialogo(dialogo_text_list:Array) -> void:
		var dialogo: dialago_1 = DIALOGO.instance()
		dialogo.dialogo_text_list = dialogo_text_list
		add_child(dialogo)
