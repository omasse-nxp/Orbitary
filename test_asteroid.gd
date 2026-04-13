extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("ui_y"):
		rotate_y(0.01)
	if Input.is_action_pressed("ui_x"):
		rotate_x(0.01)
	pass
