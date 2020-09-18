extends Proj

export var _speed : int = 800
export var _spawn_laser : PackedScene

func _process(delta):
	self.position.y -= delta * _speed

func die():
	var n_las = _spawn_laser.instance() as Proj
	n_las.position = position
	get_parent().add_child(n_las)
	queue_free()
