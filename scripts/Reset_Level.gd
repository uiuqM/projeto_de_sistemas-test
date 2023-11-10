extends Node

func _ready():
	$gameMusic.play()
	Global.fruits = 0
	$Death/TextureRect.hide()
