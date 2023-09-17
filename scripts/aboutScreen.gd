extends Node2D

func _ready():
	$controls/codebase_btn.grab_focus()
	pass

func _on_return_btn_pressed():
	SceneTransition.change_scene("res://levels/startScreen.tscn")
	
