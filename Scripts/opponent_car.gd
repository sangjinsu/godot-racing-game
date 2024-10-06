extends Area2D

const scroll_speed = 250
var speed: float = 0 


func _ready() -> void:
	speed = randf_range(scroll_speed, scroll_speed+1000)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += speed * delta


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Car":
		Global.score = 0
		get_tree().reload_current_scene()
