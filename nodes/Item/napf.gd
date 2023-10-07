extends Area2D
class_name class_napf

@export var pos: Vector2
@export var belegt: bool = false
@export var item_id:int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pos = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area:item):
	print("item rein")
	if item_id == 0:
		item_id = area.get_instance_id()
		print(item_id)
		area.on_area = true
		
func get_fett():
	if item_id == 0:
		return 0
	return instance_from_id(item_id).fett

func get_satt():
	if item_id == 0:
		return 0
	return instance_from_id(item_id).satt

func get_gluck():
	if item_id == 0:
		return 0
	return instance_from_id(item_id).gluck

func hide_item():
	if item_id != 0:
		instance_from_id(item_id).hide()
		instance_from_id(item_id).on_area = false
		item_id = 0

func _on_area_exited(area:item):
	print("item raus")
	if area.get_instance_id() == item_id:
		item_id = 0
		print(item_id)
	area.on_area = false
