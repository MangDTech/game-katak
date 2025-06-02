extends Area2D

#func _on_body_entered(body: Node2D) -> void:
	#if body.is_in_group("katak"):		
		#get_tree().change_scene_to_file("res://scene/win.tscn")
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("katak"):
		call_deferred("change_scene")

func change_scene():
	get_tree().change_scene_to_file("res://scene/win.tscn")
