extends Node


func _ready():
	$controls/return_btn.grab_focus()
	playMusicMenu._ready()
	set_process_input(true)  # Enable input processing for this node

func _on_return_btn_pressed():
	$button_pressed.play()
	playMusicMenu._pause()
	SceneTransition.change_scene("res://scenes/startScreen.tscn")

func _on_exit_btn_pressed():
	$button_pressed.play()
	get_tree().quit()

func on_button_exited():
	$button_exit.play()


func _on_Button_play_music_game_pressed():
	if (Input.is_mouse_button_pressed(BUTTON_LEFT)):
		playMusicMenu._ready()


func _on_Button_stop_music_game_pressed():
	if (Input.is_action_just_pressed("ui_response") or Input.is_mouse_button_pressed(BUTTON_LEFT)):
		playMusicMenu._pause()
