extends KinematicBody2D

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		if position.x <  320 - 10:
			position.x += 7
	if Input.is_action_pressed("ui_left"):
		if position.x > 15:
			position.x -= 7
			

signal LOST


func _on_Area2D_area_entered(area):
	print("COLLIDED AREA")
	emit_signal("LOST")
	
