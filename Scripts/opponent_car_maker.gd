extends Node

var opponentCar = preload("res://Scene/opponent_car.tscn")

# Timer를 위한 변수를 선언합니다.
var timer: Timer

func _ready():
	# Timer 노드를 생성합니다.
	timer = Timer.new()
	add_child(timer)

	# 타이머의 타임 아웃을 랜덤하게 설정합니다.
	set_random_timer()

	# 타이머의 타임 아웃 신호에 연결합니다.
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))
	# 타이머를 시작합니다.
	var initial_delay = randf_range(0.5, 5)
	timer.start(initial_delay)
	
func set_random_timer():
	# 랜덤한 시간을 설정합니다 (1초에서 5초 사이).
	var random_time = randf_range(1, 10)
	timer.wait_time = random_time

func _on_timer_timeout() -> void:
	var instance = opponentCar.instantiate()
	var x = 390 + randi() % 250
	instance.position = Vector2(x, 0)
	add_child(instance)
	set_random_timer()
	timer.start()
