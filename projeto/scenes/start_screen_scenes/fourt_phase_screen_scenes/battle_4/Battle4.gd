### Battle 4

extends Control

signal textbox_closed

export(Resource) var enemy = null

var current_enemy_health = 0
var is_defending = false
var operation = ""
var n_one = 0
var n_two = 0 

func _ready():
	$battleSound.play()
	$ActionsPanel/Actions/LineEdit.set_meta("_gui_order", 1)
	set_health($EnemyContainer/ProgressBar, enemy.health, enemy.health)
	set_health($PlayerPanel/PlayerData/ProgressBar, Global.player_health_points, Global.max_player_health_points)
	
	
	current_enemy_health = enemy.health
		
	$Textbox.hide()
	$ActionsPanel.hide()
	$QuestionsPanel.hide()
	
	display_text("Uma batalha está iniciando!")
	yield(self, "textbox_closed")
	
	display_question()
	
	$ActionsPanel/Actions/LineEdit.connect("space_pressed", self, "_on_LineEdit_space_pressed")
	$ActionsPanel/Actions/LineEdit.connect("enter_pressed", self, "_on_LineEdit_enter_pressed")

func set_health(progress_bar, health, max_health):
	progress_bar.value = health
	progress_bar.max_value = max_health
	progress_bar.get_node("Label").text = "HP: %d/%d" % [health, max_health]

func _input(event):
	if (Input.is_action_just_pressed("ui_response") or Input.is_mouse_button_pressed(BUTTON_LEFT)) and $Textbox.visible:
		$Textbox.hide()
		emit_signal("textbox_closed")

func display_text(text):
	$ActionsPanel.hide()
	$Textbox.show()
	$Textbox/Label.text = text

func enemy_turn():
	if Global.player_health_points > 0:
		$impactSound.play()
		display_text("Inimigo ataca você ferozmente!")
		yield(self, "textbox_closed")
		
		$impactSound.stop()
		
		Global.player_health_points = max(0, Global.player_health_points - enemy.damage)
		set_health($PlayerPanel/PlayerData/ProgressBar, Global.player_health_points, Global.max_player_health_points)
		$PlayerPanel/anime.play("dano")
		yield($PlayerPanel/anime, "animation_finished")
		display_text("Inimigo infligiu %d de dano!" % [enemy.damage])

		display_question()
		$ActionsPanel.show()
		$ActionsPanel/Actions/LineEdit.grab_focus()
	else:
		Global.player_health_points = 100
		Global.player_health -= 1
		print("Global.player_health: ", Global.player_health)
		print("Global.max_player_health_points: ", Global.max_player_health_points)
		print("Global.player_health_points: ", Global.player_health_points)
		if Global.player_health == 0:
			Global.player_health = 3
			SceneTransition.change_scene("res://scenes/startScreen.tscn")

		display_text("Inimigo derrotou você!")
		yield(self, "textbox_closed") 
		$playerDeath.play()
		$PlayerPanel/anime.play("hit")
		$playerDeath.stop()
		yield($PlayerPanel/anime, "animation_finished")

		yield(get_tree().create_timer(0.25), "timeout")
		get_tree().reload_current_scene()

func _on_LineEdit_enter_pressed(value):
	if $ActionsPanel/Actions/LineEdit.text.empty():
		return
		
	$QuestionsPanel/Textbox2/Label.hide()
	var result = 0
	
	if operation == "+":
		result = n_one + n_two
	elif operation == "-":
		result = n_one - n_two
	else:
		result = n_one * n_two
		
	if value == result:
		current_enemy_health = max(0, current_enemy_health - State.damage)
		set_health($EnemyContainer/ProgressBar, current_enemy_health, enemy.health)
		
		$impactSound.play()
		$AnimationPlayer.play("enemy_damaged")
		yield($AnimationPlayer, "animation_finished")
		$impactSound.stop()
		
		display_text("O inimigo recebeu %d de dano!" % State.damage)
		yield(self, "textbox_closed")
		
		if current_enemy_health == 0:
			$enemyDeath.play()
			display_text("Inimigo foi derrotado!")
			yield(self, "textbox_closed")
			
			$AnimationPlayer.play("enemy_died")
			yield($AnimationPlayer, "animation_finished")
			$enemyDeath.stop()
			yield(get_tree().create_timer(0.25), "timeout")
			SceneTransition.change_scene("res://scenes/startScreen.tscn")
		
		$ActionsPanel/Actions/LineEdit.clear()
		display_question()
	else:
		if Global.player_health_points == 0:
			display_text("Inimigo derrotou você!")
			yield(self, "textbox_closed")
			$playerDeath.play()

			$PlayerPanel/anime.play("hit")
			yield($PlayerPanel/anime, "animation_finished")
			Global.player_health_points = Global.max_player_health_points
			Global.player_health = Global.player_health - 1
			yield(get_tree().create_timer(0.25), "timeout")
			SceneTransition.change_scene("res://scenes/start_screen_scenes/fourt_phase_screen_scenes/Fase_04.tscn")
		enemy_turn()
		
	$ActionsPanel/Actions/LineEdit.clear()
	$ActionsPanel.show()

func _draw_numbers():
	var rng_one = RandomNumberGenerator.new()
	var rng_two = RandomNumberGenerator.new()
	
	rng_one.randomize()
	rng_two.randomize()
	
	var num_one = rng_one.randi_range(0, 15)
	var num_two = rng_two.randi_range(0, 15)
	
	return [num_one, num_two]

func _draw_operation():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var rng_operation = rng.randi_range(0, 2)
	
	return rng_operation

func display_question():
	$QuestionsPanel/Textbox2/Label.show()
	var operation_number = _draw_operation()
	if(operation_number == 0):
		operation = "+"
	elif(operation_number == 1):
		operation = "-"
	else:
		operation = "*"
	
	var numbers = _draw_numbers()
	n_one = numbers[0]
	n_two = numbers[1]
	$QuestionsPanel/Textbox2/Label.text = "Qual é o resultado de %d %c %d?" % [n_one, operation, n_two] 
	$QuestionsPanel.show()
	$ActionsPanel.show()
	$ActionsPanel/Actions/LineEdit.grab_focus()

func _on_LineEdit_space_pressed():
	$button.play()
