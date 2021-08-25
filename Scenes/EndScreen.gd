extends Control


func change_scene():
	get_tree().change_scene("res://Scenes/GameScene.tscn")
	

func _on_Button_pressed():
	change_scene()

