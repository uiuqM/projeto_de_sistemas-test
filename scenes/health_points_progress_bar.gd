extends ProgressBar

func _process(delta: float) -> void:
	value = Global.player_health_points
	max_value = Global.max_player_health_points
