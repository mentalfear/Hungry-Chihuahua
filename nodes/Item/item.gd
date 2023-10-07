extends Area2D
class_name item

@export var locked_on_mouse: bool = false
@export var drag_allowed: bool = false
@export var on_area: bool = false

@export var sprite: Texture2D
@export var start_position: Vector2

@export var fett:int = 0
@export var satt:int = 0
@export var gluck:int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	if sprite != null:
		$item_sprite.set_texture(sprite);
	start_position = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("click_left"):
		locked_on_mouse = false;
		if on_area:
			print("On Area")
		else:
			position = start_position
	if Input.is_action_just_pressed("click_left") and drag_allowed:
		locked_on_mouse = true;
		
	if locked_on_mouse:
		position = get_viewport().get_mouse_position()

func _on_mouse_entered():
	drag_allowed = true;

func _on_mouse_exited():
	drag_allowed = false
