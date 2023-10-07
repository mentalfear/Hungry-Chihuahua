extends Node

signal a_new_day

@export var fett_bar:int = 0
@export var satt_bar: int = 0
@export var gluck_bar: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$leisten/fett.set_value_to(fett_bar)
	$leisten/satt.set_value_to(satt_bar)
	$leisten/gluck.set_value_to(gluck_bar)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_füttern_button_down():
	for cup in $cups.get_children():
		fett_bar = $leisten/fett.set_value_to(fett_bar + cup.get_fett())
		satt_bar = $leisten/satt.set_value_to(satt_bar + cup.get_satt())
		gluck_bar = $leisten/gluck.set_value_to(gluck_bar + cup.get_gluck())
		cup.hide_item()
		
	print("fett: ", fett_bar)
	print("satt: ", satt_bar)
	print("gluck: ", gluck_bar)
	#emit_signal("a_new_day")


func _on_reset_button_down():
	for item in $items.get_children():
		item.show()
