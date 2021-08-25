extends Node2D

const OBSTACLE = preload("res://Scenes/Obstacle.tscn")
var randomizer = RandomNumberGenerator.new()



func _on_Timer_timeout():
	var obstacle = OBSTACLE.instance()
	var randomXPosition = randomizer.randi_range(10, 500)
	obstacle.position.x = randomXPosition
	add_child(obstacle)
	

func change_scene():
	get_tree().change_scene("res://Scenes/EndScreen.tscn")
func _on_Car_LOST():
	print("CHANGE TO LOSE SCENE")
	change_scene()
