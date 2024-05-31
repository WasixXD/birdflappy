extends Node


@export var pipe_scene: PackedScene
@onready var timer = $Timer
@onready var player = $"../Player"
@onready var score = %Score

var pipes_gap = 50

func _ready():
	timer.start()




func _process(delta):
	add_point()
	pass



func _on_timer_timeout():
	var new_pipe = pipe_scene.instantiate()
	var screen_height = get_viewport().size.y
	var screen_width = get_viewport().size.x
	
	var center_height = screen_height / 2
	var variation_range = screen_height / 4
	var pipe_y_position = center_height + randi() % variation_range - variation_range / 2
	
	
	new_pipe.position = Vector2(screen_width + pipes_gap, pipe_y_position )
	
	add_child(new_pipe) 
	timer.start()


func add_point():
	score.text = str(player.score)


