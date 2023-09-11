extends Node2D

func _ready():
	pass
	
func _on_codebase_btn_pressed():
	var _open_github_code: bool = OS.shell_open("https://github.com/erarich/projeto_de_sistemas")

func _on_return_btn_pressed():
	var _change_scene: bool = get_tree().change_scene("res://levels/startScreen.tscn")
	
func _on_exit_btn_pressed():
	get_tree().quit()
	
func _on_erarich_btn_pressed():
	var _open_github_profile_erarich: bool = OS.shell_open("https://github.com/erarich")
	
func _on_mateus_btn_pressed():
	var _open_github_profile_mateus: bool = OS.shell_open("https://github.com/MateusAlvez")
	
func _on_wilque_btn_pressed():
	var _open_github_profile_wilque: bool = OS.shell_open("https://github.com/uiuqM")
