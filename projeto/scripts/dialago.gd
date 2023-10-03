extends Control
class_name dialago

signal dialogo_finished

onready var text : RichTextLabel = get_node("background/Text")

var can_intarect : bool = false

var current_dialogo: int = 0
var dialogo_text_list : Array = []


func _ready() -> void:
	show_dialogo()

func _precces (_delta: float) -> void:
	if can_intarect and Input.is_action_just_pressed("ui_interact"):
		can_intarect = false
		current_dialogo += 1 
		show_dialogo()

func show_dialogo() -> void:
	if current_dialogo == dialogo_text_list.size() - 1:
		emit_signal("dialogo_finished")
		queue_free()
		return
		
	text.percent_visible = 0
	text.text = dialogo_text_list[current_dialogo]
	
	
	while text.percent_visible < 1:
		text.percent_visible += get_process_delta_time()
		yield (get_tree(), "idle_frame")
		
	can_intarect = true
	


func _on_Button_pressed():
	get_tree().change_scene("res://levels/levels_first_game/battle/Battle.tscn")
