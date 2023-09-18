extends Node2D

func _ready():
	$Control/controls/codebase_btn.grab_focus()
	pass

func _on_return_btn_pressed():
	playMusicMenu._pause()
	SceneTransition.change_scene("res://levels/startScreen.tscn")
	
<<<<<<< HEAD
=======
func _on_codebase_btn_focus_entered():
	$Control/button_exit.play()

func _on_return_btn_focus_entered():
	$Control/button_exit.play()

func _on_exit_btn_focus_entered():
	$Control/button_exit.play()
	
func _on_erarich_btn_focus_entered():
	$Control/button_exit.play()

func _on_wilque_btn_focus_entered():
<<<<<<< HEAD
	$button_exit.play()
>>>>>>> be901a8de571d07fce69ee841cdaeff2f31e0b23
=======
	$Control/button_exit.play()
>>>>>>> 94611e770d68952ba1e9e3f0290dc688ae27e8b2
