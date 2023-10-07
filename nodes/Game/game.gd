extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_main_frame_a_new_day():
	$blende_new_day.show()
	$main_frame.hide()


func _on_blende_new_day_main_frame():
	$main_frame.show()
	$blende_new_day.hide()

