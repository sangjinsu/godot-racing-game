extends Area2D


const scroll_speed = 200

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += scroll_speed * delta


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Car":
		Global.score += 10
		self.queue_free()
