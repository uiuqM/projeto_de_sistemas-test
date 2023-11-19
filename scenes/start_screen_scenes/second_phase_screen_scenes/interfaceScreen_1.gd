extends CanvasLayer


const DIALOGO: PackedScene = preload("res://scenes/start_screen_scenes/third_phase_screen_scenes/battle_3/dialago_1.tscn")



func spaw_dialogo(dialogo_text_list:Array) -> void:
		var dialogo: dialago_3= DIALOGO.instance()
		dialogo.dialogo_text_list = dialogo_text_list
		add_child(dialogo)
