extends Node2D


export var power_up_1 : PackedScene
export var power_up_2 : PackedScene
export var power_up_3 : PackedScene


func _on_Timer_timeout():
	randomize()
	var num = int(rand_range(0,3))
	var power : PackedScene
	if(num == 0): power = power_up_1
	if(num == 1): power = power_up_2
	if(num == 2): power = power_up_3
	
	var inst_power := power.instance()
	inst_power.position = Vector2(rand_range(0,get_viewport_rect().size.x),0)
	get_parent().add_child(inst_power)
