#extends Area2D
#
#func _on_body_entered(body: Node2D) -> void:
	#get_tree().call_group("katak", "add_score")	
	#queue_free()
extends Area2D
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("katak"):
		body.add_score()
		queue_free()
