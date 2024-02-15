extends Control

var count=114
onready var wait_text=$MarginContainer/VBoxContainer/Label

func _ready():
	$Timer.start()

func _on_Button_button_down():
	var xy=get_node("MarginContainer/VBoxContainer/Button").rect_position
	xy[1]+=6
	get_node("MarginContainer/VBoxContainer/Button").rect_position=xy
	$AudioStreamPlayer.play()

func _on_Button_button_up():
	var xy=get_node("MarginContainer/VBoxContainer/Button").rect_position
	xy[1]-=6
	get_node("MarginContainer/VBoxContainer/Button").rect_position=xy
	$Timer.stop()
	SceneTransition.transition_fade("res://04_Test.tscn")

func _on_Timer_timeout():
	count-=1
	if count>=1:
		wait_text.text="Для большей точности нужно подождать \n"+str(count)+" секунд и продолжить тест"
	else:
		$Timer.stop()
		SceneTransition.transition_fade("res://04_Test.tscn")
