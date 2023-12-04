extends CanvasLayer


const DIALOGO: PackedScene = preload("res://scenes/start_screen_scenes/second_phase_screen_scenes/battle-2/dialago_2.tscn")


func spaw_dialogo(dialogo_text_list:Array) -> void:
		var dialogo: dialago_2 = DIALOGO.instance()
		dialogo.dialogo_text_list = dialogo_text_list
		add_child(dialogo)
