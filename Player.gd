extends CharacterBody2D

var screen_size
var speed = 120

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	if input_vector != Vector2.ZERO:
		velocity = input_vector.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		velocity = Vector2.ZERO
		$AnimatedSprite2D.stop()
	move_and_slide()
	#position += velocity * delta
	#position.x = clamp(position.x, 0, screen_size.x)
	#position.y = clamp(position.y, 0, screen_size.y)
	
	if velocity.y < 0:
		$AnimatedSprite2D.animation = "back"
	elif velocity.y > 0:
		$AnimatedSprite2D.animation = "front"
	elif velocity.x != 0:
		$AnimatedSprite2D.animation = "side"
		$AnimatedSprite2D.flip_h = velocity.x < 0
		

