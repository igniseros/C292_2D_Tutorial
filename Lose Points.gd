extends Area2D


func _ready():
	var shape : RectangleShape2D = $CollisionShape2D.shape
	shape.extents.x = get_viewport_rect().size.x
	position.y = get_viewport_rect().size.y + 5
	position.x = get_viewport_rect().size.x / 2
