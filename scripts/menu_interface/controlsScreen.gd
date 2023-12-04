extends Control

func _ready():
	$controls/return_btn.grab_focus()
	if SoundControl.state():
		playMusicMenu._ready()

func _on_return_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	SceneTransition.change_scene("res://scenes/startScreen.tscn")
	playMusicMenu._pause()
	
func _on_exit_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	get_tree().quit()

func on_button_exited():
	if SoundControl.stateInterface():
		$button_exit.play()
