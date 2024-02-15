extends Control

func _on_TextureButton_pressed():
	get_node("Particles2D").emitting=true
	get_node("TextureButton/AnimationPlayer").play("Новая анимация")
	yield(get_tree().create_timer(5), "timeout")
	#get_tree().change_scene("res://Control2.tscn")
	SceneTransition.transition_fade("res://Control2.tscn")
