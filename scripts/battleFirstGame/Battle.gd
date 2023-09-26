extends Control

signal textbox_closed

export(Resource) var enemy = null

var current_player_health = 0
var current_enemy_health = 0
var is_defending = false
var operation = ""
var n_one = 0
var n_two = 0 

func _ready():
	set_health($EnemyContainer/ProgressBar, enemy.health, enemy.health)
	set_health($PlayerPanel/PlayerData/ProgressBar, State.current_health, State.max_health)
	$EnemyContainer/Enemy.texture = enemy.texture
	
	current_player_health = State.current_health
	current_enemy_health = enemy.health
	
	$Textbox.hide()
	$ActionsPanel.hide()
	$QuestionsPanel.hide()
	
	display_text("A wild %s appears!" % enemy.name.to_upper())
	yield(self, "textbox_closed")
	
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
	$QuestionsPanel/Label.text = " Me diga mortal qual o resultado de %d %c %d?" % [n_one, operation, n_two] 
	print("\nSoma %d" % (n_one + n_two))
	print("\nSubtracao %d" % (n_one - n_two))
	print("\nMultiplicacao %d" % (n_one * n_two))
	$QuestionsPanel.show()
	$ActionsPanel.show()
	$ActionsPanel/Actions/LineEdit.grab_focus()
	$ActionsPanel/Actions/LineEdit.connect("enter_pressed", self, "_on_LineEdit_enter_pressed")

func set_health(progress_bar, health, max_health):
	progress_bar.value = health
	progress_bar.max_value = max_health
	progress_bar.get_node("Label").text = "HP: %d/%d" % [health, max_health]

func _input(event):
	if (Input.is_action_just_pressed("ui_accept") or Input.is_mouse_button_pressed(BUTTON_LEFT)) and $Textbox.visible:
		$Textbox.hide()
		emit_signal("textbox_closed")

func display_text(text):
	$ActionsPanel.hide()
	$Textbox.show()
	$Textbox/Label.text = text

func enemy_turn():
	if current_player_health > 0:
		display_text("%s launches at you fiercely!" % enemy.name)
		yield(self, "textbox_closed")
		
		current_player_health = max(0, current_player_health - enemy.damage)
		set_health($PlayerPanel/PlayerData/ProgressBar, current_player_health, State.max_health)
		$PlayerPanel/anime.play("dano")
		yield($PlayerPanel/anime, "animation_finished")
		display_text("%s dealt %d damage!" % [enemy.name, enemy.damage])
		yield(self, "textbox_closed")
		$ActionsPanel.show()
		$ActionsPanel/Actions/LineEdit.grab_focus()
	else:
		display_text("%s defeated you!" % enemy.name)
		yield(self, "textbox_closed") 
		$PlayerPanel/anime.play("hit")
		yield($PlayerPanel/anime, "animation_finished")
			
		yield(get_tree().create_timer(0.25), "timeout")
		get_tree().quit()
		

func _on_Run_pressed():
	display_text("Got away safely!")
	yield(self, "textbox_closed")
	yield(get_tree().create_timer(0.25), "timeout")
	get_tree().quit()

func _on_LineEdit_enter_pressed(value):
	var result = 0
	
	if operation == "+":
		result = n_one + n_two
	elif operation == "-":
		result = n_one - n_two
	else:
		result = n_one * n_two
		
	if value == result:
		print("Valor correto")
		current_enemy_health = max(0, current_enemy_health - State.damage)
		set_health($EnemyContainer/ProgressBar, current_enemy_health, enemy.health)
		
		$AnimationPlayer.play("enemy_damaged")
		yield($AnimationPlayer, "animation_finished")
		
		display_text("You dealt %d damage!" % State.damage)
		yield(self, "textbox_closed")
		
		if current_enemy_health == 0:
			display_text("%s was defeated!" % enemy.name)
			yield(self, "textbox_closed")
			
			$AnimationPlayer.play("enemy_died")
			yield($AnimationPlayer, "animation_finished")
			
			yield(get_tree().create_timer(0.25), "timeout")
			get_tree().quit()
		
		$ActionsPanel/Actions/LineEdit.clear()
		display_new_question()
	else:
		print("Valor incorreto")
		print("value %d" % value)
		print("result %d" % result)
		enemy_turn()
	print("Valor inserido:", value)
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

func display_new_question():
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
	$QuestionsPanel/Label.text = "Me diga mortal qual o resultado de %d %c %d?" % [n_one, operation, n_two] 
	$QuestionsPanel.show()
	$ActionsPanel/Actions/LineEdit.grab_focus()

