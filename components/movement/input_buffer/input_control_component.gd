extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	is_mouse_captured()


func is_mouse_captured()->void:

	if Input.is_action_just_pressed("ui_cancel"):
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		else:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
 
