extends Area2D



func _on_fall_zone_body_entered(body):
	get_tree().create_timer(0.3)
	Global.player_health -= 1
	get_tree().reload_current_scene()
	if Global.player_health < 1:
		Global.player_health = 3
		SceneTransition.change_scene("res://scenes/start_screen_scenes/firstPhaseScreen.tscn")
	
