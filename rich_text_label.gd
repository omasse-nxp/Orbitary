extends RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	#text = "x = " + String.num(get_node("%asteroid").position.y) + "\n"
	#text += "y = " + String.num(get_node("%asteroid").position.z) + "\n"
	text = "thrust = " + String.num(get_node("%ship").ship_z_thrust) + "\n"
	text += "x = " + String.num(get_node("%ship").global_position.x) + "\n"
	text += "z = " + String.num(get_node("%ship").global_position.z)
	pass
