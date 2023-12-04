extends KinematicBody2D

var velocity = Vector2()
var move_speed = 1000
var gravity = 1200
var jump_force = -1200
var is_grounded
var hurted = false
var knocback_dir = 10
var knocback_int = 600
var player_position = position
onready var raycasts = $raycasts


## func _ready() -> void:
	## position.x = Global.checkpoint_pos

func _physics_process(delta : float) -> void:
 velocity.y += gravity * delta

 _get_input()

 velocity = move_and_slide(velocity)
 is_grounded = _check_is_ground()
 _set_animation()

func _get_input():
	 velocity.x = 0
	 var move_direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	 velocity.x = lerp(velocity.x,  move_speed * move_direction, 0.2)
	
	 if move_direction !=0:
		 $texture.scale.x = move_direction
		 knocback_dir = move_direction

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump") and is_grounded:
		velocity.y = jump_force /2
		$jumpSound.play()


func _check_is_ground():
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			$jumpSound.stop()
			return true
	return false
	
func _set_animation():
	var anim = "idle"
	
	if !is_grounded:
		anim = "jump"
	elif velocity.x != 0:
		anim = "run"
	if hurted:
		anim = "hit"
	if $anime.assigned_animation != anim:
		$anime.play(anim)

func knocback():
	velocity.x = -knocback_dir * knocback_int
	velocity = move_and_slide(velocity)

func _on_hurtbox_body_entered(body):
	Global.player_health -= 1
	hurted = true
	knocback()
	get_node ("hurtbox/CollisionShape2D").set_deferred("disabled",true)
	yield(get_tree().create_timer(0.4),"timeout")
	get_node ("hurtbox/CollisionShape2D").set_deferred("disabled",false)
	hurted = false
	if Global.player_health < 1:
		$anime.play("hit")
		queue_free()
		get_tree().reload_current_scene()

func hit_checkpoint():
	Global.checkpoint_pos = position.x
