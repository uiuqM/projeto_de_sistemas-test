extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Return.grab_focus()




func _on_control_btn_pressed():
	var CrontrolScreen = load("res://levels/controlsScreen.tscn").instance()
	get_tree().current_scene.add_child(CrontrolScreen)

