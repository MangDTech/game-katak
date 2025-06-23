#extends Area2D
#
#func _on_body_entered(body: Node2D) -> void:
	#get_tree().call_group("katak", "add_score")	
	#queue_free()
extends Area2D  # Area2D untuk mendeteksi collision dengan koin/score item

# Fungsi yang dipanggil ketika body masuk ke area koin
func _on_body_entered(body: Node2D) -> void:
	# Cek apakah body yang masuk adalah katak (pemain)
	if body.is_in_group("katak"):
		# Panggil fungsi add_score pada katak untuk menambah skor
		body.add_score()
		# Hapus koin dari scene setelah diambil
		queue_free()
