extends Node2D

var pipes_movement = 250
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position.x -= pipes_movement * delta
	
	if( position.x < -50 ):
		self.queue_free()
		
