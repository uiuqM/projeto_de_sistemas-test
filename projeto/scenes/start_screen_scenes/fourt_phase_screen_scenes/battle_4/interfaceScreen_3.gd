extends CanvasLayer


const DIALOGO: PackedScene = preload("res://scenes/start_screen_scenes/fourt_phase_screen_scenes/battle_4/dialago_1.tscn")


func spaw_dialogo(dialogo_text_list:Array) -> void:
		var dialogo: dialago_4 = DIALOGO.instance()
		dialogo.dialogo_text_list = dialogo_text_list
		add_child(dialogo)
