extends Control

func _ready():
	$controls/start_btn.grab_focus()
	if SoundControl.state():
		playMusicMenu._ready()

# Funções de botão pressionado
func _on_start_btn_pressed(): # "Jogar" button
	if SoundControl.stateInterface():
		$button_pressed.play()
	SceneTransition.change_scene("res://scenes/start_screen_scenes/firstPhaseScreen.tscn")

func _on_control_btn_pressed(): # "Controles" button
	if SoundControl.stateInterface():
		$button_pressed.play()
	SceneTransition.change_scene("res://scenes/start_screen_scenes/controlsScreen.tscn")

func _on_config_btn_pressed(): # "Configurações" button
	if SoundControl.stateInterface():
		$button_pressed.play()
	SceneTransition.change_scene("res://scenes/start_screen_scenes/configScreen.tscn")

func _on_about_btn_pressed(): # "Sobre" button
	if SoundControl.stateInterface():
		$button_pressed.play()
	SceneTransition.change_scene("res://scenes/start_screen_scenes/aboutScreen.tscn")

func _on_exit_btn_pressed(): # "Sair" button
	if SoundControl.stateInterface():
		$button_pressed.play()
	yield (get_tree().create_timer(1.0), "timeout")
	get_tree().quit()

func on_button_exited():
	if SoundControl.stateInterface():
		$button_exit.play()
