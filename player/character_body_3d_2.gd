extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

@export var camera_name:String = "camera"


@onready var animation_library_godot_standard: Node3D = $AnimationLibrary_Godot_Standard





var camera_component:Node3D  
func  _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	# find_camera()	

	camera_component=$"..".find_child(camera_name)
	print(camera_component,"123123")
func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

		
	var input_dir := Input.get_vector("walk_left", "walk_right", "walk_front", "walk_behind")
	var direction :Vector3= (camera_component.horizontal_pivot.global_basis* Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
		look_forward(direction,delta)	
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
	move_and_slide()





func look_forward(direction:Vector3,delta:float)->void:
	var look_target:=animation_library_godot_standard.global_transform.looking_at(animation_library_godot_standard.global_position+direction,Vector3.UP,true)

	animation_library_godot_standard.global_transform = animation_library_godot_standard.global_transform.interpolate_with(look_target,1.0-exp(-10*delta))  
