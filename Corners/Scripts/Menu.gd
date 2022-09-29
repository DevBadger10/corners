extends Node2D

func _on_Join_pressed():
	get_tree().change_scene("res://Scenes/Join.tscn")

func _on_Host_pressed():
	get_tree().change_scene("res://Scenes/Host.tscn")
