extends Sprite2D

@export var radius:int = 1
var start_postion:Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	start_postion = global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#mouse - start Position
	var richtung = get_viewport().get_mouse_position() - start_postion
	var length = clamp(richtung.length(),0,radius) 
	global_position = start_postion + richtung.normalized() * length
