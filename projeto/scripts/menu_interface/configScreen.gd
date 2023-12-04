extends Node


func _ready():
	$controls/return_btn.grab_focus()
	if SoundControl.state():
		playMusicMenu._ready()
	set_process_input(true)  # Enable input processing for this node

func _on_return_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	playMusicMenu._pause()
	SceneTransition.change_scene("res://scenes/startScreen.tscn")

func _on_exit_btn_pressed():
	if SoundControl.stateInterface():
		$button_pressed.play()
	get_tree().quit()

func on_button_exited():
	if SoundControl.stateInterface():
		$button_exit.play()


func _on_Button_play_music_game_pressed():
	SoundControl.change_state_game(true)


func _on_Button_stop_music_game_pressed():
	SoundControl.change_state_game(false)


func _on_Button_play_menu_music_pressed():
	playMusicMenu._ready()
	SoundControl.change_state(true)


func _on_Button_stop_menu_music_pressed():
	playMusicMenu._pause()
	SoundControl.change_state(false)


func _on_Button_play_interface_sound_pressed():
	SoundControl.change_state_interface(true)

func _on_Button_stop_interface_sound_pressed():
	SoundControl.change_state_interface(false)


func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("menu"), value)


func _on_sliderInterface_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Interface"), value)


func _on_sliderGame_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("game"), value)
