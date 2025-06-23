extends CanvasLayer  # CanvasLayer untuk UI yang selalu di atas

# Fungsi yang dipanggil saat node siap
func _ready():
	add_to_group("HUD")  # Menambahkan ke grup "HUD" agar bisa menerima panggilan dari katak

# Fungsi untuk update informasi di HUD (skor)
func update_info(score):
	# Update tampilan skor di HUD
	$VBoxContainer/HBoxContainer/score.text = str(score)
