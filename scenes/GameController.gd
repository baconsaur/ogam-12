extends Node2D

var pause_menu_obj = preload("res://scenes/PauseMenu.tscn")
var pause_menu
onready var canvas = $CanvasLayer


func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		pause_menu = pause_menu_obj.instance()
		canvas.add_child(pause_menu)
		get_tree().paused = true
