extends Node2D

export var movement_speed: float = 32.0

func _ready():
	pass

func _physics_process(delta):
	var input_x: float = Input.get_axis("ui_left", "ui_right")
	var input_y: float = Input.get_axis("ui_up", "ui_down")
	$Player.move_and_slide(
		Vector2(input_x, input_y) * movement_speed
	)
