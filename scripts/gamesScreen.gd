extends Node2D

func _ready():
	$controls/exit_btn/Label.hide()
	$controls/game_one_btn.grab_focus()
	playMusicMenu._ready()

func _on_return_btn_pressed():
	SceneTransition.change_scene("res://levels/startScreen.tscn")
	
func _on_exit_btn_pressed():
	get_tree().quit()

func _on_game_one_btn_pressed():
	SceneTransition.change_scene("res://levels/firstGameScreen.tscn")
<<<<<<< HEAD
=======

func _on_game_one_btn_focus_entered():
	$button_exit.play()

func _on_return_btn_focus_entered():
	$button_exit.play()

func _on_exit_btn_focus_entered():
	$button_exit.play()
>>>>>>> be901a8de571d07fce69ee841cdaeff2f31e0b23
