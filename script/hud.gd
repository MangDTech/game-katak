#extends CanvasLayer
#
#func update_info(lives, score):
	#$VBoxContainer/HBoxContainer/lives.text = str(lives)
	#$VBoxContainer/HBoxContainer2/score.text = str(score)
extends CanvasLayer

func _ready():
	add_to_group("HUD")  # Agar bisa menerima panggilan dari katak

func update_info(score):
	#$VBoxContainer/HBoxContainer/lives.text = str(lives)
	$VBoxContainer/HBoxContainer/score.text = str(score)
