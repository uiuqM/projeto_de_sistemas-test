extends Node

const SAVE_GAME_PATH := "user://save.tres"
var checkpoint_pos = 0

func _ready():
	$gameMusic.play()
	
	
