extends Node2D

class_name Player

export var _laser_scene : PackedScene
export var _laser_spawn_offset : Vector2


func _process(delta) -> void:
	self.position.x = get_global_mouse_position().x
	
	if (Input.is_action_just_pressed("fire_laser")):
		spawn_laser()

func spawn_laser():
	print("Laser spawned")
	var new_laser = _laser_scene.instance() as Node2D
	new_laser.position = position + _laser_spawn_offset
	get_parent().add_child(new_laser)
