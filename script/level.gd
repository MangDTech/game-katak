extends Control  # Control untuk UI pemilihan level

# Fungsi untuk masuk ke level 1
func _on_satu_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/lvl1.tscn")

# Fungsi untuk masuk ke level 2
func _on_dua_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/lvl2.tscn")

# Fungsi untuk masuk ke level 3
func _on_tiga_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/lvl3.tscn")

# Fungsi untuk kembali ke menu utama
func _on_kembali_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/menu.tscn")
