extends CharacterBody2D  # CharacterBody2D untuk karakter pemain yang bisa bergerak dan melompat

# Variabel untuk mengatur pergerakan dan fisika katak
var speed = 200        # Kecepatan gerak horizontal
var gravity = 800      # Kekuatan gravitasi
var jump_force = -600  # Kekuatan lompatan (negatif karena Y ke atas)
var score = 0          # Skor pemain

# Referensi ke AudioStreamPlayer untuk sound effects
@onready var step_sound = $jalan   # Suara langkah kaki
@onready var jump_sound = $lompat  # Suara lompatan

# Fungsi yang dipanggil saat node siap
func _ready():
	add_to_group("katak")  # Menambahkan ke grup "katak" agar bisa diidentifikasi oleh objek lain

# Fungsi untuk menambah skor ketika mengambil koin
func add_score():
	$koin.play()  # Mainkan suara koin
	score += 1    # Tambah skor
	update_info_hud()  # Update tampilan HUD

# Fungsi physics yang dipanggil setiap frame
func _physics_process(delta):
	# Aplikasikan gravitasi
	velocity.y += gravity * delta

	# Kontrol pergerakan horizontal
	if Input.is_action_pressed("left"):
		velocity.x = -speed  # Gerak ke kiri
		_play_step_sound()   # Mainkan suara langkah
	elif Input.is_action_pressed("right"):
		velocity.x = speed   # Gerak ke kanan
		_play_step_sound()   # Mainkan suara langkah
	else:
		velocity.x = 0       # Berhenti bergerak
		step_sound.stop()    # Hentikan suara langkah

	# Kontrol lompatan (hanya bisa lompat jika di tanah)
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_force  # Aplikasikan kekuatan lompat
		_play_jump_sound()       # Mainkan suara lompat

	# Aplikasikan pergerakan dengan collision detection
	move_and_slide()

# Fungsi untuk memutar suara langkah kaki
func _play_step_sound():
	# Hanya mainkan jika di tanah dan belum sedang diputar
	if is_on_floor() and not step_sound.playing:
		step_sound.play()

# Fungsi untuk memutar suara lompatan
func _play_jump_sound():
	jump_sound.stop()  # Hentikan suara sebelumnya
	jump_sound.play()  # Mainkan suara lompat

# Fungsi untuk update tampilan HUD
func update_info_hud():
	# Panggil fungsi update_info pada semua node dalam grup "HUD"
	get_tree().call_group("HUD", "update_info", score)
