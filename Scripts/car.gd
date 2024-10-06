extends CharacterBody2D

const speed = 50

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("위로"):
		velocity.y -= speed
	if Input.is_action_pressed("아래로"):
		velocity.y += speed
	if Input.is_action_pressed("오른쪽으로"):
		velocity.x += speed
	if Input.is_action_pressed("왼쪽으로"):
		velocity.x -= speed
		
	
	if Input.is_action_just_released("위로"):
		velocity.y	= 0
	elif Input.is_action_just_released("아래로"):
		velocity.y = 0
	elif Input.is_action_just_released("오른쪽으로"):
		velocity.x = 0
	if Input.is_action_just_released("왼쪽으로"):
		velocity.x = 0
		
	if position.x < 390:
		position.x = 390
	elif position.x > 640:
		position.x = 640
	
	if position.y < 33:
		position.y = 33
	elif position.y > 960:
		position.y = 960
	
		
	move_and_slide()
