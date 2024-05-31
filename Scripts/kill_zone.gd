extends Area2D
@onready var timer = $Timer
@onready var die = $die


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	Engine.time_scale = 0.5
	body.alive = false
	die.play()
	timer.start()
	
	
	


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
