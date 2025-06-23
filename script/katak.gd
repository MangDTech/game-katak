extends CharacterBody2D

var speed = 200
var gravity = 800
var jump_force = -600
var score = 0

@onready var step_sound = $jalan
@onready var jump_sound = $lompat

func _ready():
	add_to_group("katak")  # Penting agar koin bisa memanggil add_score

func add_score():
	$koin.play()
	score += 1
	update_info_hud()

func _physics_process(delta):
	velocity.y += gravity * delta

	if Input.is_action_pressed("left"):
		velocity.x = -speed
		_play_step_sound()
	elif Input.is_action_pressed("right"):
		velocity.x = speed
		_play_step_sound()
	else:
		velocity.x = 0
		step_sound.stop()

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_force
		_play_jump_sound()

	move_and_slide()

func _play_step_sound():
	if is_on_floor() and not step_sound.playing:
		step_sound.play()

func _play_jump_sound():
	jump_sound.stop()
	jump_sound.play()

func update_info_hud():
	get_tree().call_group("HUD", "update_info", score)
