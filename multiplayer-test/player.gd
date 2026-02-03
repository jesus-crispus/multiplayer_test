extends Node3D

@export var speed : float
# Called when the node enters the scene tree for the first time.
func _enter_tree() -> void:
	set_multiplayer_authority(name.to_int())



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !is_multiplayer_authority(): return
	var input_dir = Input.get_vector("move_down", "move_up","move_left", "move_right")
	input_dir = input_dir.normalized()
	position.x += input_dir.x * speed * delta
	position.z += input_dir.y * speed * delta
	print("position", position)
