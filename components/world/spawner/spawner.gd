extends Node3D


@export var item_scences:Array[PackedScene]#生成的对象
@export var nodes_spawn:Node3D#生成在哪个节点里
@export var area_spawn:MeshInstance3D#在规定的正方形里生成 
@export var saf_regi:NavigationRegion3D#获取NavigationRegion3D,用于获取安全生成点


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	if Input.is_action_just_pressed("Generate instance"):
		spawn_items_randomly()



func spawn_items_randomly()->void:
	var random_scene:PackedScene = item_scences.pick_random()

	var instancce:Node3D = random_scene.instantiate()as Node3D

	var box_mesh:BoxMesh = area_spawn.mesh as BoxMesh#只有Boxmesh具有.size

	var spawn_position:Vector3= area_spawn.global_position#这里不能读取box_mesh的global_position，因为Boxmesh是一种资源

	var size:Vector3 = box_mesh.size

	var half_size = size/2

	var map_rid:RID = saf_regi.get_navigation_map() 
	
	var position_:Vector3 = Vector3(
	randf_range(spawn_position.x-half_size.x,spawn_position.x+half_size.x),
	randf_range(spawn_position.y-half_size.y,spawn_position.y+half_size.y),
	randf_range(spawn_position.z-half_size.z,spawn_position.z+half_size.z)
	)
#这里更好的做法是先在vector3d 里随机-half_size到half_size，再乘以方块的global_tranform

	position_ = NavigationServer3D.map_get_closest_point(map_rid,position_)#转化为安全生成点



	nodes_spawn.add_child(instancce)


	instancce.global_position = position_ 
