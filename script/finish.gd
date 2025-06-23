extends Area2D  # Area2D untuk mendeteksi ketika pemain mencapai finish

# Fungsi yang dipanggil ketika body masuk ke area finish
func _on_body_entered(body: Node2D) -> void:
	# Cek apakah body yang masuk adalah katak (pemain)
	if body.is_in_group("katak"):
		# Panggil change_scene secara deferred untuk keamanan
		call_deferred("change_scene")

# Fungsi untuk mengubah scene ke scene kemenangan
func change_scene():
	get_tree().change_scene_to_file("res://scene/win.tscn")
