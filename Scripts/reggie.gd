extends CharacterBody2D

var speed = 40
var player_chase = false
var player = null
var direction

func _physics_process(delta):
	if player_chase:
		direction = player.position - position
		position += (direction)/speed
		
		if abs(direction.x) > abs(direction.y):
			if direction.x > 0:
				$AnimatedSprite2D.flip_h = false
				$AnimatedSprite2D.play("side")
			else:
				$AnimatedSprite2D.flip_h = true
				$AnimatedSprite2D.play("side")
		else:
			if direction.y > 0:
				$AnimatedSprite2D.play("front")
			else:
				$AnimatedSprite2D.play("back")
		
func _on_detection_body_entered(body):
	player = body
	player_chase = true

func _on_detection_body_exited(body):
	var player_chase = false
	var player = null
