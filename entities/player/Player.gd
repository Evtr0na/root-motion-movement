extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

@export var camera_name:String = "camera"
@export var camera_ref:Node3D  
@export var camera_length:float =1.375

@onready var rig_pivot: Node3D = $"Rig pivot"




var is_control:=false



var camera_component:Node3D  
func  _ready() -> void:

	camera_component=$"..".find_child(camera_name)#在最开始去寻找名字叫做camera_name的节点
func _physics_process(delta: float) -> void:


	if not is_on_floor():
		velocity += get_gravity() * delta


	move_system(delta)


	# Handle jump.
	move_and_slide()




func look_forward(direction:Vector3,delta:float)->void:#角色转向
	var look_target:=rig_pivot.global_transform.looking_at(rig_pivot.global_position+direction,Vector3.UP,true)

	rig_pivot.global_transform = rig_pivot.global_transform.interpolate_with(look_target,1.0-exp(-10*delta))  



func  move_system(delta)->void:#移动执行

	# if not is_control:
	# 	return


	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

		
	var input_dir := Input.get_vector("walk_left", "walk_right", "walk_front", "walk_behind")
	var direction :Vector3= (camera_component.horizontal_pivot.global_basis* Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction and is_control:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
		look_forward(direction,delta)	
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
