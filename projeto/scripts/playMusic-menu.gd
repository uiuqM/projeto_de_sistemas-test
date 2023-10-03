extends CanvasLayer

func _ready():
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.play()
	pass

func _pause():
	$AudioStreamPlayer.stop()
