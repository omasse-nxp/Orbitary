extends RigidBody3D

var ship_thrust = 9000
var ship_z_thrust = 0
var ship_rot_thrust = 1000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	ship_z_thrust = 0
	if Input.is_action_pressed("ui_up"):
		ship_z_thrust = ship_thrust
	if Input.is_action_pressed("ui_down"):
		ship_z_thrust = -ship_thrust
	
	apply_central_force(transform.basis.z * ship_z_thrust * delta)
	if Input.is_action_just_pressed("ui_left"):
		apply_torque_impulse(transform.basis.y * +ship_rot_thrust * delta)

	if Input.is_action_just_pressed("ui_right"):
		apply_torque_impulse(transform.basis.y * -ship_rot_thrust * delta)
		
	if !Input.is_action_pressed("ui_left") and !Input.is_action_pressed("ui_right"):
		angular_velocity = Vector3.ZERO
