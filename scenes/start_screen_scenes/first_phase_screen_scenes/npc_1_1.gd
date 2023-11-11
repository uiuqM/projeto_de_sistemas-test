extends StaticBody2D

var can_interect: bool = false



func _on_Area2D_body_entered(body)->void:
	if body.name == "player":
		can_interect = true
		var novo_dialogo =  Dialogic.start('texto_suporte_mapa1')
		add_child(novo_dialogo)

