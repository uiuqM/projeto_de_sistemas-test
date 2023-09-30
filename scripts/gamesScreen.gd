extends Node2D

func _ready():
	$controls/game_one_btn.grab_focus()
	playMusicMenu._ready()

func _on_game_one_btn_pressed():
	SceneTransition.change_scene("res://levels/firstGameScreen.tscn")

func _on_return_btn_pressed():
	SceneTransition.change_scene("res://levels/startScreen.tscn")
	
func _on_exit_btn_pressed():
	get_tree().quit()

