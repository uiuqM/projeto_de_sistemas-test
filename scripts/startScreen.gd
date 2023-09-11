extends Control

func _ready():
	$controls/exit_btn/Label.hide()
	$controls/start_btn.grab_focus()

func _on_start_btn_pressed():
	get_tree().change_scene("res://levels/gameScreen.tscn")

func _on_exit_btn_pressed():
	$controls/exit_btn/Label.show()
	yield (get_tree().create_timer(1.0), "timeout")
	get_tree().quit()

func _on_control_btn_pressed():
	var CrontrolScreen = load("res://levels/controlsScreen.tscn").instance()
	get_tree().current_scene.add_child(CrontrolScreen)

func _on_about_btn_pressed():
	var AboutScreen = load("res://levels/aboutScreen.tscn").instance()
	get_tree().current_scene.add_child(AboutScreen)
