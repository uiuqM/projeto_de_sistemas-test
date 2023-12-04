extends Area2D

signal geted
export var fruits = 1 

func _on_itens_body_entered(body):
	$anim.play("collected")
	Global.fruits += fruits

func _on_anim_animation_finished(anim_name):
	if anim_name == "collected":
		emit_signal("geted")
		queue_free()
