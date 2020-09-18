extends Proj

export var _speed : int = 800

func _process(delta):
	self.position.y -= delta * _speed
