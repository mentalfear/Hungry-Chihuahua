extends Node2D

signal main_frame

var text:String = "Ein alter Tag verfliegt und\nein neuer Tag beginnt..."
var counter:int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	if text.substr(counter,1) == " ":
		counter += 1
	counter += 1
	$Label.text = text.substr(0,counter)
	print(counter)
	if counter==text.length():
		$Timer.stop()
		$AnzeigenDauer.start()


func _on_anzeigen_dauer_timeout():
	print("Szenenwechsel")
	emit_signal("main_frame")


func _on_start_delay_timeout():
	$Timer.start()
	$StartDelay.stop()


func _on_draw():
	counter = 0
	$Label.text = text.substr(0,counter)
	$StartDelay.start()
	print("Starte Timer")
