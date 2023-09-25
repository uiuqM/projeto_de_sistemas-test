extends Node2D

func _ready():
	$Control/controls/codebase_btn.grab_focus()
	pass

func _on_return_btn_pressed():
	playMusicMenu._pause()
	SceneTransition.change_scene("res://levels/startScreen.tscn")
	
func _on_codebase_btn_focus_entered():
	$Control/button_exit.play()

func _on_return_btn_focus_entered():
	$Control/button_exit.play()

func _on_exit_btn_focus_entered():
	$Control/button_exit.play()

func _on_codebase_btn_pressed():
	OS.shell_open("https://github.com/erarich/projeto_de_sistemas")

func _on_dev_list_pressed():
	SceneTransition.change_scene("res://levels/devs_list.tscn")
