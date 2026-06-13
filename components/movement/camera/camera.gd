
#---------------------------------------------------------------------
#说明
#---------------------------------------------------------------------



#这是一个相机组件

#实现基本相机相转功能
#读取同父级下的character3d类，按相应键位切换控制对象（调试阶段使用q键）



#---------------------------------------------------------------------

#---------------------------------------------------------------------

extends Node3D


@export var mouse_sensitivity := 0.005
@export var decay := 20.0
@export var now_target: CharacterBody3D
@export var is_change:=true#是否开启换人功能，不开启则默认附着单人

@onready var camera_3d: Camera3D = $SpringArm3D/Camera3D
@onready var int_pivot: Node3D = $int_pivot
@onready var spring_arm_3d: SpringArm3D = $SpringArm3D
@onready var horizontal_pivot: Node3D = $HorizontalPivot
@onready var vertical_pivot: Node3D = $HorizontalPivot/VerticalPivot


var _look := Vector2.ZERO
var int_position := Vector3.ZERO
var change_num: int = 0





func _ready() -> void:

	change_num = $"..".find_children("*", "CharacterBody3D").find(now_target)
	print(change_num)
	camera_3d.make_current()
	change_position.call_deferred() # 延迟触发


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:

	frame_camera_movement(delta)

	move_camera(delta)


func _unhandled_input(event: InputEvent) -> void:

	move_mouse_distance(event)




func  move_mouse_distance(event)->void:
	
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		_look += event.relative * mouse_sensitivity # 累计一帧内移动的距离？


	
func frame_camera_movement(delta: float) -> void:
	horizontal_pivot.rotate_y(-_look.x)
	vertical_pivot.rotate_x(-_look.y)

	int_pivot.global_transform = spring_arm_3d.global_transform.interpolate_with(vertical_pivot.global_transform, 1.0 - exp(-decay * delta))


	spring_arm_3d.global_basis = int_pivot.global_basis

	_look = Vector2.ZERO

#选择角色
func change_position() -> CharacterBody3D:
	var player_nodes: Array[Node] = $"..".get_children().filter(func(c): return c is CharacterBody3D)

	var now_num:= player_nodes.find(now_target)
	if  player_nodes.size()>1: 
		change_num = now_num-1

	now_target = player_nodes[change_num]
		
	print(int_position)

	
	# change_num = (change_num + 1)%player_nodes.size() # 实现0到player_nodes-1的循环
	for i in player_nodes:
		if i != now_target:
			i.is_control = false 
			print("已经关闭", i.name)
			
		else:
			i.is_control = true

	return now_target

#执行移动相机
func move_camera(delta: float) -> void:
	


	if now_target == null:
		print("请添加初始相机附着对象")
		return

	spring_arm_3d.spring_length = now_target.camera_length

	if is_change and Input.is_action_just_pressed("change_camra_position"):
		change_position()
			

	int_position = now_target.camera_ref.global_position

	global_position = lerp(global_position, int_position, 1.0 - exp(-decay * delta))
	
