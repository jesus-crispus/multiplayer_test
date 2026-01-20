extends Node3D

@export var speed : float
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var input_dir = Input.get_vector("move_down", "move_up","move_left", "move_right")
	input_dir = input_dir.normalized()
	position.x += input_dir.x * speed * delta
	position.z += input_dir.y * speed * delta
