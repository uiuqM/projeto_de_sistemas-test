extends Label

func _process(delta: float) -> void:
	text = String(Global.player_health)
