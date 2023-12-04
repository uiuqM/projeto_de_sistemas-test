extends StaticBody2D
class_name enemy


var can_intarect: bool = false

export (Array, String) var dialogo_text

func _physics_process(_delta)->void:
	if Input.is_action_just_pressed("ui_interact") and can_intarect:
	 can_intarect = false
	 print ("entrou em contato")
	 get_tree().call_group("interface","spaw_dialogo",dialogo_text)


func on_body_entered(body)->void:
	if body.name == "player":
		can_intarect =true
		print("Personagem entrou em contato")
		$questmark/AnimationPlayer.play("idle")

func _on_Area2D_body_exited(body)->void:
	if body.name == "player":
		can_intarect= false
		print("Personagem saiu do contato")
		
		
