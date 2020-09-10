extends Node2D

export var _enemy_scene : PackedScene

func spawn_enemy() -> void:
	print("SPAWNED")
	var new_enemy = _enemy_scene.instance() as Node2D
	
	var rand_x := rand_range(0,get_viewport_rect().size.x)
	new_enemy.position = Vector2(rand_x,0)
	get_parent().add_child(new_enemy)
