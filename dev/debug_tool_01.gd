extends Node3D




@onready var label_3d: Label3D = $vector/Label3D
@onready var camera_:Node3D = $camera
@onready var vector: Node3D = $vector

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_camera(camera_)


func look_camera(camera_)->void:
	if camera_:


		label_3d.look_at(camera_.camera_global_pos,Vector3.UP,false)



func label_text(text)->void:
	label_3d.text =str(text)


func rotation_vector(value)->void:
	vector.rotation.y = value 
 
