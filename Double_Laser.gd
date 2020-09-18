extends Proj

export var _laser_scene : PackedScene

func _ready():
	var new_laser = _laser_scene.instance() as Node2D
	var new_laser_2 = _laser_scene.instance() as Node2D
	new_laser.position = Vector2(position.x - 8, position.y - 3)
	new_laser_2.position = Vector2(position.x + 8, position.y + 3)
	get_parent().add_child(new_laser)
	get_parent().add_child(new_laser_2)
	queue_free()
