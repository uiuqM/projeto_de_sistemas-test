extends Node2D

func _ready():
	pass

func _on_return_btn_pressed():
	var _change_scene: bool = get_tree().change_scene("res://levels/firstGameScreen.tscn")
	
