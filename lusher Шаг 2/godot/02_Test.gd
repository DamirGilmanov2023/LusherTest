 extends Control
onready var silver=$MarginContainer/VBoxContainer/GridContainer/Silver
onready var blue=$MarginContainer/VBoxContainer/GridContainer/Blue
onready var green=$MarginContainer/VBoxContainer/GridContainer/Green
onready var red=$MarginContainer/VBoxContainer/GridContainer/Red
onready var yellow=$MarginContainer/VBoxContainer/GridContainer/Yellow
onready var pink=$MarginContainer/VBoxContainer/GridContainer/Pink
onready var brown=$MarginContainer/VBoxContainer/GridContainer/Brown
onready var black=$MarginContainer/VBoxContainer/GridContainer/Black
onready var silver_particles=$MarginContainer/VBoxContainer/GridContainer/Silver/SilverParticles
onready var blue_particles=$MarginContainer/VBoxContainer/GridContainer/Blue/BlueParticles
onready var green_particles=$MarginContainer/VBoxContainer/GridContainer/Green/GreenParticles
onready var red_particles=$MarginContainer/VBoxContainer/GridContainer/Red/RedParticles
onready var yellow_particles=$MarginContainer/VBoxContainer/GridContainer/Yellow/YellowParticles
onready var pink_particles=$MarginContainer/VBoxContainer/GridContainer/Pink/PinkParticles
onready var brown_particles=$MarginContainer/VBoxContainer/GridContainer/Brown/BrownParticles
onready var black_particles=$MarginContainer/VBoxContainer/GridContainer/Black/BlackParticles
var flag=true

func _process(delta):
	if len(SceneTransition.chose_one)==8 and flag:
		flag=false
		SceneTransition.transition_fade("res://03_Wait.tscn")

func _on_Silver_pressed():
	silver_particles.emitting=true
	$Silver_fade_out.play("silver_fade_out")
	$SilverPlayer.play()
	silver.disabled=true
	yield(get_tree().create_timer(1), "timeout")
	#silver.visible=false
	SceneTransition.chose_one.append("silver")

func _on_Blue_pressed():
	blue_particles.emitting=true
	$Blue_fade_out.play("blue_fade_out")
	$BluePlayer.play()
	blue.disabled=true
	yield(get_tree().create_timer(1), "timeout")
	#blue.visible=false
	SceneTransition.chose_one.append("blue")

func _on_Green_pressed():
	green_particles.emitting=true
	$Green_fade_out.play("green_fade_out")
	$GreenPlayer.play()
	green.disabled=true
	yield(get_tree().create_timer(1), "timeout")
	#green.visible=false
	SceneTransition.chose_one.append("green")

func _on_Red_pressed():
	red_particles.emitting=true
	$Red_fade_out.play("red_fade_out")
	$RedPlayer.play()
	red.disabled=true
	yield(get_tree().create_timer(1), "timeout")
	#red.visible=false
	SceneTransition.chose_one.append("red")

func _on_Yellow_pressed():
	yellow_particles.emitting=true
	$Yellow_fade_out.play("yellow_fade_out")
	$YellowPlayer.play()
	yellow.disabled=true
	yield(get_tree().create_timer(1), "timeout")
	#yellow.visible=false
	SceneTransition.chose_one.append("yellow")

func _on_Pink_pressed():
	pink_particles.emitting=true
	$Pink_fade_out.play("pink_fade_out")
	$PinkPlayer.play()
	pink.disabled=true
	yield(get_tree().create_timer(1), "timeout")
	#pink.visible=false
	SceneTransition.chose_one.append("pink")

func _on_Brown_pressed():
	brown_particles.emitting=true
	$Brown_fade_out.play("brown_fade_out")
	$BrownPlayer.play()
	brown.disabled=true
	yield(get_tree().create_timer(1), "timeout")
	#brown.visible=false
	SceneTransition.chose_one.append("brown")

func _on_Black_pressed():
	black_particles.emitting=true
	$Black_fade_out.play("black_fade_out")
	$BlackPlayer.play()
	black.disabled=true
	yield(get_tree().create_timer(1), "timeout")
	#black.visible=false
	SceneTransition.chose_one.append("black")



