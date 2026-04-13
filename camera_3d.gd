extends Camera3D

var _mouse_input : bool = false
var _mouse_rotation : Vector3
var _rotation_input : float
var _tilt_input : float
var _camera_rotation : Vector3

@export var TILT_LOWER_LIMIT := deg_to_rad(-90.0)
@export var TILT_UPPER_LIMIT := deg_to_rad(90.0)
@export var MOUSE_SENSITIVITY : float = 0.2 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_update_camera(delta)
	pass

func _unhandled_input(event):
	_mouse_input = event is InputEventMouseMotion and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED
	if _mouse_input :
		_rotation_input = -event.relative.x * MOUSE_SENSITIVITY
		_tilt_input = -event.relative.y * MOUSE_SENSITIVITY
		

func _update_camera(delta):
	if(Input.is_action_just_pressed("scrollUp")):
		global_position.z -= (1.0 * MOUSE_SENSITIVITY)
	if(Input.is_action_just_pressed("scrollDown")):
		global_position.z += (1.0 * MOUSE_SENSITIVITY)
	
	#_mouse_rotation.x += _tilt_input * delta
	#_mouse_rotation.x = clamp(_mouse_rotation.x, TILT_LOWER_LIMIT, TILT_UPPER_LIMIT)
	#_mouse_rotation.y += _rotation_input * delta
	
	#_camera_rotation = Vector3(_mouse_rotation.x,_mouse_rotation.y,0)
	#global_transform.basis = Basis.from_euler(_camera_rotation)

	#_rotation_input = 0.0
	#_tilt_input = 0.0
	
