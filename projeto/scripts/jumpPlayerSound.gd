extends CanvasLayer

func _ready():
	if $jumpSound.playing == false:jumpSound
		$jumpSound.play()
	pass

func _pause():
	$jumpSound.stop()
