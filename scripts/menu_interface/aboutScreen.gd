extends Node2D

func _ready():
	$Control/controls/codebase_btn.grab_focus()
	playMusicMenu._ready()
	pass

func _on_return_btn_pressed():
	$button_pressed.play()
	playMusicMenu._pause()
	SceneTransition.change_scene("res://scenes/start_screen_scenes/startScreen.tscn")

func _on_codebase_btn_pressed():
	$button_pressed.play()
	OS.shell_open("https://github.com/erarich/projeto_de_sistemas")

func _on_dev_list_pressed():
	$button_pressed.play()
	SceneTransition.change_scene("res://scenes/start_screen_scenes/about_screen_scenes/devs_list.tscn")

func on_button_exited():
	$button_exit.play()
