extends Node2D

const OBSTACLE = preload("res://Scenes/Obstacle.tscn")


func _on_Timer_timeout():
	print("SPAWN")
	var obstacle = OBSTACLE.instance()
	add_child(obstacle)
	
