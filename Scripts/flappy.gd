extends CharacterBody2D

@onready var flap = $flap


var alive = true
var score = 0
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		

	# Handle jump.
	if Input.is_action_just_pressed("jump") and alive :
		flap.play()
		velocity.y = JUMP_VELOCITY
	
	move_and_slide()
