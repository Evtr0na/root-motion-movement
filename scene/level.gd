extends Node3D
@onready var character_body_3d: CharacterBody3D = $Player/CharacterBody3D
@onready var character_body_3d_2: CharacterBody3D = $Player/CharacterBody3D2
@onready var free_camera:Node3D = $Player/camera
@onready var cam_01: Camera3D = $Player/CharacterBody3D/SpringArm3D/Camera3D
@onready var cam_02: Camera3D = $Player/CharacterBody3D2/SpringArm3D/Camera3D
@onready var cam_03: Camera3D = $Player/camera/SpringArm3D/Camera3D




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass	



func _unhandled_input(event: InputEvent) -> void:
	pass
