extends Control

var is_paused = false


func _process(delta):
	if Input.is_action_pressed("pause"):
		is_paused = true
	if is_paused == false:
		hide()
		get_tree().paused = false
		playMusicMenu._pause()
		
	if is_paused == true:
		show()
		$CenterContainer/controls/return_btn.grab_focus()
		get_tree().paused = true
		

func _on_return_btn_pressed():
	is_paused = false

func _on_quit_btn_pressed():
	get_tree().quit()
