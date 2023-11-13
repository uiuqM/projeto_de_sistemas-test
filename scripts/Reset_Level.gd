extends Node

const SAVE_GAME_PATH := "user://save.tres"
var checkpoint_pos = 0

func _ready():
	Global.fruits = 0
	Global.checkpoint_pos = 0
	$gameMusic.play()
	
	
