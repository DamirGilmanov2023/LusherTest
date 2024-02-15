extends Control
onready var rezult_label=$MarginContainer/ScrollContainer/VBoxContainer/Label
var mask=SceneTransition.mask
func _ready():
	var fv1=SceneTransition.mask_translate[SceneTransition.chose_one[0]]
	var fv2=SceneTransition.mask_translate[SceneTransition.chose_one[1]]
	var fv3=SceneTransition.mask_translate[SceneTransition.chose_one[2]]
	var fv4=SceneTransition.mask_translate[SceneTransition.chose_one[3]]
	var fv5=SceneTransition.mask_translate[SceneTransition.chose_one[4]]
	var fv6=SceneTransition.mask_translate[SceneTransition.chose_one[5]]
	var fv7=SceneTransition.mask_translate[SceneTransition.chose_one[6]]
	var fv8=SceneTransition.mask_translate[SceneTransition.chose_one[7]]
	
	var lv1=SceneTransition.mask_translate[SceneTransition.chose_two[0]]
	var lv2=SceneTransition.mask_translate[SceneTransition.chose_two[1]]
	var lv3=SceneTransition.mask_translate[SceneTransition.chose_two[2]]
	var lv4=SceneTransition.mask_translate[SceneTransition.chose_two[3]]
	var lv5=SceneTransition.mask_translate[SceneTransition.chose_two[4]]
	var lv6=SceneTransition.mask_translate[SceneTransition.chose_two[5]]
	var lv7=SceneTransition.mask_translate[SceneTransition.chose_two[6]]
	var lv8=SceneTransition.mask_translate[SceneTransition.chose_two[7]]
	rezult_label.text+="Результат первого выбора:\n (характеризует желаемое состояние \n психологического состояния) \n"
	
	rezult_label.text+="Первый и второй цвет: "+fv1+" + "+fv2+"\n"
	var v1=SceneTransition.slovar_v1[str(mask[SceneTransition.chose_one[0]])+str(mask[SceneTransition.chose_one[1]])]
	rezult_label.text+=v1+"\n \n"
	
	rezult_label.text+="Третий и четвертый цвет: "+fv3+" + "+fv4+"\n"
	var v2=SceneTransition.slovar_v2[str(mask[SceneTransition.chose_one[2]])+str(mask[SceneTransition.chose_one[3]])]
	rezult_label.text+=v2+"\n \n"
	
	rezult_label.text+="Пятый и шестой цвет: "+fv5+" + "+fv6+"\n"
	var v3=SceneTransition.slovar_v3[str(mask[SceneTransition.chose_one[4]])+str(mask[SceneTransition.chose_one[5]])]
	rezult_label.text+=v3+"\n \n"
	
	rezult_label.text+="Седьмой и восьмой цвет: "+fv7+" + "+fv8+"\n"
	var v4=SceneTransition.slovar_v4[str(mask[SceneTransition.chose_one[6]])+str(mask[SceneTransition.chose_one[7]])]
	rezult_label.text+=v4+"\n \n \n"
	
	
	rezult_label.text+="Результат второго выбора:\n (характеризует действительное состояние \n психологического состояния) \n"
	
	rezult_label.text+="Первый и второй цвет: "+lv1+" + "+lv2+"\n"
	var l1=SceneTransition.slovar_v1[str(mask[SceneTransition.chose_two[0]])+str(mask[SceneTransition.chose_two[1]])]
	rezult_label.text+=l1+"\n \n"
	
	rezult_label.text+="Третий и четвертый цвет: "+lv3+" + "+lv4+"\n"
	var l2=SceneTransition.slovar_v2[str(mask[SceneTransition.chose_two[2]])+str(mask[SceneTransition.chose_two[3]])]
	rezult_label.text+=l2+"\n \n"
	
	rezult_label.text+="Пятый и шестой цвет: "+lv5+" + "+lv6+"\n"
	var l3=SceneTransition.slovar_v3[str(mask[SceneTransition.chose_two[4]])+str(mask[SceneTransition.chose_two[5]])]
	rezult_label.text+=l3+"\n \n"
	
	rezult_label.text+="Седьмой и восьмой цвет: "+lv7+" + "+lv8+"\n"
	var l4=SceneTransition.slovar_v4[str(mask[SceneTransition.chose_two[6]])+str(mask[SceneTransition.chose_two[7]])]
	rezult_label.text+=l4+"\n \n \n"
	
	rezult_label.text+="Цвет с первого выбора на первой позиции и цвет второго выбора на восьмой позиции: "+fv1+" + "+lv8+"\n"
	var vl=SceneTransition.slovar_v5[str(mask[SceneTransition.chose_one[0]])+str(mask[SceneTransition.chose_two[7]])]
	rezult_label.text+=vl+"\n \n"
	
func _on_Button_button_down():
	var xy=get_node("MarginContainer/ScrollContainer/VBoxContainer/Button").rect_position
	xy[1]+=6
	get_node("MarginContainer/ScrollContainer/VBoxContainer/Button").rect_position=xy
	$AudioStreamPlayer.play()

func _on_Button_button_up():
	var xy=get_node("MarginContainer/ScrollContainer/VBoxContainer/Button").rect_position
	xy[1]-=6
	get_node("MarginContainer/ScrollContainer/VBoxContainer/Button").rect_position=xy
	SceneTransition.chose_one.clear()
	SceneTransition.chose_two.clear()
	SceneTransition.transition_fade("res://01_Start.tscn")


