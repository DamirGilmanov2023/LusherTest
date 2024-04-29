extends Control

func _on_Button_button_down():
	var xy=get_node("MarginContainer/VBoxContainer/Button").rect_position
	xy[1]+=6
	get_node("MarginContainer/VBoxContainer/Button").rect_position=xy
	$AudioStreamPlayer.play()

func _on_Button_button_up():
	var xy=get_node("MarginContainer/VBoxContainer/Button").rect_position
	xy[1]-=6
	get_node("MarginContainer/VBoxContainer/Button").rect_position=xy
	SceneTransition.transition_fade("res://02_Test.tscn")
	
