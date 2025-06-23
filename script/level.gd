extends Control


func _on_satu_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/lvl1.tscn")

func _on_dua_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/lvl2.tscn")

func _on_tiga_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/lvl3.tscn")

func _on_kembali_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/menu.tscn")
