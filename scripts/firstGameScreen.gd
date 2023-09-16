extends Node2D

func _ready():
	pass
	
func _on_start_btn_pressed():
	get_tree().change_scene("res://levels/levels_first_game/firstStageScreen.tscn")
	
func _on_instruction_btn_pressed():
	var _instruction_scene: bool = get_tree().change_scene("res://levels/levels_first_game/aboutFirstGame.tscn")
	
func _on_return_btn_pressed():
	var _change_scene: bool = get_tree().change_scene("res://levels/gamesScreen.tscn")
	
func _on_exit_btn_pressed():
	get_tree().quit()
