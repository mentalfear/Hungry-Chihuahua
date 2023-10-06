extends Node

signal futter_luni

@export var fett_bar:int = 0
@export var satt_bar: int = 0
@export var gluck_bar: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_futter_luni():
	for napf in $napfe.get_children():
		fett_bar += $napf.get_fett;
	print(fett_bar)
