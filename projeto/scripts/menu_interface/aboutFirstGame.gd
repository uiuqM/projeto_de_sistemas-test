extends Node2D

func _ready():
	$controls/return_btn.grab_focus()
	if SoundControl.state():
		playMusicMenu._ready()

func _on_return_btn_pressed():
	playMusicMenu._pause()
	SceneTransition.change_scene("res://scenes/start_screen_scenes/firstPhaseScreen.tscn")
	
