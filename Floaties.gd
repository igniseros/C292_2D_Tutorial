extends Particles2D

func _ready():
	position = Vector2(get_viewport_rect().size.x /2, get_viewport_rect().size.y /2)
	(process_material as ParticlesMaterial).emission_box_extents.x = get_viewport_rect().size.x
	(process_material as ParticlesMaterial).emission_box_extents.y = get_viewport_rect().size.y - 20
