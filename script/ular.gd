extends Node2D

func _on_enemy_body_entered(body: Node2D) -> void:
	if body.is_in_group("katak"):
		get_tree().change_scene_to_file("res://scene/menu.tscn") # Replace with function body.
