extends Node2D

func _ready():
	$Control/controls/erarich_btn.grab_focus()
	pass

func _on_erarich_btn_pressed():
	OS.shell_open("https://github.com/erarich")

func _on_mateus_btn_pressed():
	OS.shell_open("https://github.com/MateusAlvez")

func _on_sophia_btn_pressed():
	OS.shell_open("https://github.com/SophiaMenezes")

func _on_wilque_btn_pressed():
	OS.shell_open("https://github.com/uiuqM")
