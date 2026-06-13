extends CharacterBody3D


const JUMP_VELOCITY = 4.5

@export var SPEED:float =1.295 
@export var turn_speed:float = 50.0
@export var camera_name:String = "camera"
@export var camera_ref:Node3D  
@export var camera_length:float  = 2
@export var animationtree_:AnimationTree

@onready var rig_pivot: Node3D = $"Rig pivot"


#debug
#----------------------------------------------------------

@onready var debug_tool_01: Node3D = $"Rig pivot/Debug_tool_01"

#----------------------------------------------------------

var input_dir:Vector2 = Vector2.ZERO
var is_control:=false
var angle_diff:float=0.00


var camera_component:Node3D  
func  _ready() -> void:

	camera_component=$"..".find_child(camera_name)#在最开始去寻找名字叫做camera_name的节点
func _physics_process(delta: float) -> void:


	if not is_on_floor():
		velocity += get_gravity() * delta


	move_system(delta)

	# Handle jump.
	move_and_slide()


func anim_blend(direction,delta)->void:
	if direction and is_control:
		var angle:= rad_to_deg((rig_pivot.global_basis.z.signed_angle_to(direction,Vector3.UP)))
		print(angle)
		angle_diff =move_toward(angle_diff,angle,turn_speed) 
		# print(angle_diff)
	else:
		# print(angle_diff)
		angle_diff =move_toward(angle_diff,0,turn_speed)
	

	debug_tool_01.rotation_vector(deg_to_rad(angle_diff))
	debug_tool_01.label_text(snapped(angle_diff,0))

	animationtree_.set("parameters/BlendTree/BlendSpace1D/blend_position",-angle_diff)


func look_forward(direction:Vector3,delta:float)->void:#角色转向
	var look_target:=rig_pivot.global_transform.looking_at(rig_pivot.global_position+direction,Vector3.UP,true)

	rig_pivot.global_transform = rig_pivot.global_transform.interpolate_with(look_target,1.0-exp(-turn_speed*delta))  



func  move_system(delta)->void:#移动执行
	input_dir = Input.get_vector("walk_left","walk_right","walk_front","walk_behind")
	var direction:Vector3 = (camera_component.horizontal_pivot.global_basis*Vector3(input_dir.x,0,input_dir.y)).normalized()
	anim_blend(direction,delta)
	if direction and is_control:
		velocity.x=direction.x*SPEED
		velocity.z=direction.z*SPEED
		look_forward(direction,delta)

	else :
		velocity.x=move_toward(velocity.x,0,SPEED)
		velocity.z=move_toward(velocity.z,0,SPEED)
