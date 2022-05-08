extends Control


export var game_scene = "res://scenes/Game.tscn"
export var options_scene = "res://scenes/OptionsMenu.tscn"
export var main_menu_scene = "res://scenes/MainMenu.tscn"



func _input(event):
	if not get_tree().paused:
		return

	if Input.is_action_just_pressed("ui_cancel"):
		unpause()


func _on_StartButton_pressed():
	get_tree().change_scene(game_scene)


func _on_OptionsButton_pressed():
	get_tree().change_scene(options_scene)


func _on_ExitButton_pressed():
	get_tree().quit()


func _on_BackButton_pressed():
	unpause()
	get_tree().change_scene(main_menu_scene)


func _on_ResumeButton_pressed():
	unpause()


func unpause():
	get_tree().paused = false
	queue_free()
