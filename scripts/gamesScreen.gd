extends Node2D

func _ready():
  pass

func _on_return_btn_pressed():
	var _change_scene: bool = get_tree().change_scene("res://levels/startScreen.tscn")
	
func _on_exit_btn_pressed():
	get_tree().quit()

func _on_game_one_btn_pressed():
	get_tree().change_scene("res://levels/firstGameScreen.tscn")
