extends Control  # Skrip ini digunakan pada node Control, biasanya untuk antarmuka pengguna (UI)

# Fungsi yang dipanggil ketika tombol "Start" ditekan
# Memulai permainan dengan masuk ke level 1
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/lvl1.tscn")  # Mengganti scene saat ini ke level 1

# Fungsi yang dipanggil ketika tombol "Quit" ditekan
# Keluar dari game sepenuhnya
func _on_quit_pressed() -> void:
	get_tree().quit()  # Keluar dari game atau aplikasi 

# Fungsi yang dipanggil ketika tombol "Levels" ditekan
# Membuka scene pemilihan level
func _on_levels_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/level.tscn")
