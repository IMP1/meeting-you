extends KinematicBody2D

export var player_speed = 64

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	var motion = Vector2(0, 0)
	if Input.is_action_pressed("move_up"):
		motion.y -= 1
	if Input.is_action_pressed("move_left"):
		motion.x -= 1
	if Input.is_action_pressed("move_down"):
		motion.y += 1
	if Input.is_action_pressed("move_right"):
		motion.x += 1
	move(motion.normalized() * player_speed * delta)