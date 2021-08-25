extends Label

onready var timer = get_node("Timer")

var POINTS = 0

func _ready():
	timer.set_wait_time(1)
	timer.start()


func _on_PointsTimer_timeout():
	print("POINT")
	text = "points: " + str(POINTS)
	POINTS += 0.03
