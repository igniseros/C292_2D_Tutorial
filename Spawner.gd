extends Node2D

export var _enemy_scene : PackedScene
export var _acceleration : float = 0.2

var _alive_time = 0

func spawn_enemy() -> void:
	if (not GameState.is_game_over):
		print("SPAWNED")
		var new_enemy = _enemy_scene.instance() as Node2D
		
		var rand_x := rand_range(0,get_viewport_rect().size.x)
		new_enemy.position = Vector2(rand_x,0)
		get_parent().add_child(new_enemy)
	else:
		_alive_time = 0
	

func _process(delta):
	_alive_time += delta
	$Timer.wait_time = 1.5 / (1 + (_alive_time * _acceleration))
