extends Node

func _ready():
	$controls/return_btn.grab_focus()
	playMusicMenu._ready()

func _on_return_btn_pressed():
	$button_pressed.play()
	playMusicMenu._pause()
	SceneTransition.change_scene("res://levels/startScreen.tscn")

func _on_exit_btn_pressed():
	$button_pressed.play()
	get_tree().quit()

func on_button_exited():
	$button_exit.play()
