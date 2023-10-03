extends CanvasLayer
class_name interface

const DIALOGO: PackedScene = preload("res://levels/levels_first_game/dialago.tscn")

func spaw_dialogo(dialogo_text_list:Array) -> void:
		var dialogo: dialago = DIALOGO.instance()
		dialogo.dialogo_text_list = dialogo_text_list
		add_child(dialogo)
