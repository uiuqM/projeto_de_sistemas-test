extends Label

func _process(delta: float) -> void:
	text = "%d/%d" % [Global.player_health_points, Global.max_player_health_points]
	
