extends Label

onready var timer = get_node("Timer")

var seconds = 0
var minutes = 0

func _ready():
	timer.set_wait_time(1)
	timer.start()

func _on_Timer_timeout():
	if seconds < 60:
		seconds += 1
	if seconds >= 60:
		minutes += 1
		seconds = 0
	
	text = "TIME: " + str(minutes) + " : " + str(seconds) + "s"
	
