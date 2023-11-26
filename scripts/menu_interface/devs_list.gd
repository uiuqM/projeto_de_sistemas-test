extends Node2D

func _ready():
	$Control/controls/erarich_btn.grab_focus()
	if SoundControl.state():
		playMusicMenu._ready()

func _on_erarich_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	OS.shell_open("https://github.com/erarich")

func _on_mateus_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	OS.shell_open("https://github.com/MateusAlvez")

func _on_sophia_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	OS.shell_open("https://github.com/SophiaMenezes")

func _on_wilque_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	OS.shell_open("https://github.com/uiuqM")

func on_button_exited():
	if SoundControl.stateInterface():
		$button_exit.play()

func _on_return_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	playMusicMenu._pause()
	SceneTransition.change_scene("res://scenes/start_screen_scenes/aboutScreen.tscn")
