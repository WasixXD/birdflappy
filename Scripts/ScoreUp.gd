extends Area2D
@onready var coin = $"../Coin"


func _on_body_entered(body):
	if( body.alive ):
		body.score += 1
		coin.play()
		
