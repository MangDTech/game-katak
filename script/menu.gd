extends Control  # Skrip ini digunakan pada node Control, biasanya untuk antarmuka pengguna (UI)

# Fungsi yang dipanggil ketika tombol "Start" ditekan
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/lvl1.tscn")  # Mengganti scene saat ini ke scene utama (main.tscn)

# Fungsi yang dipanggil ketika tombol "Quit" ditekan
func _on_quit_pressed() -> void:
	get_tree().quit()  # Keluar dari game atau aplikasi 

func _on_levels_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/level.tscn")
