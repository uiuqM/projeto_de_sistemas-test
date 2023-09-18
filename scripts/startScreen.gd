extends Control

func _ready():
	$controls/exit_btn/Label.hide()
	$controls/start_btn.grab_focus()
	playMusicMenu

func _on_start_btn_pressed():
	SceneTransition.change_scene("res://levels/gamesScreen.tscn")

func _on_exit_btn_pressed():
	$controls/exit_btn/Label.show()
	yield (get_tree().create_timer(1.0), "timeout")
	get_tree().quit()

func _on_control_btn_pressed():
	SceneTransition.change_scene("res://levels/controlsScreen.tscn")

func _on_about_btn_pressed():
	SceneTransition.change_scene("res://levels/aboutScreen.tscn")
<<<<<<< HEAD
=======

func _on_start_btn_focus_exited():
	$button_exit.play()

func _on_control_btn_focus_entered():
	$button_exit.play()

func _on_about_btn_focus_entered():
	$button_exit.play()

func _on_exit_btn_focus_entered():
	$button_exit.play()
>>>>>>> be901a8de571d07fce69ee841cdaeff2f31e0b23
