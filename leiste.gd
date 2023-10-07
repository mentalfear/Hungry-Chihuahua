extends Node2D

@export var bereich:float = 30
@export var value:float = 15
@export var offset:float = 50

var bar_size
var minValue = bereich/2*(-1)
var maxValue = bereich/2

# Called when the node enters the scene tree for the first time.
func _ready():
	bar_size = $bar.get_rect().size.x - offset
	print(bar_size)
	print($bar.get_rect().size.x)
	update_knochen()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_value_to(new_value):
	value = clamp(new_value, minValue, maxValue)
	update_knochen()
	return value

func update_knochen():
	$knochen.position = Vector2(self.value/self.bereich*self.bar_size, 0)
