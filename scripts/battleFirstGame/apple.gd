extends Area2D

signal geted

func _on_itens_body_entered(body):
	print(body.name)
	$anim.play("collected")

func _on_anim_animation_finished(anim_name):
	if anim_name == "collected":
		emit_signal("geted")
		queue_free()
