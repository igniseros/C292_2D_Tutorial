extends Node2D


export var new_laser : PackedScene
export var _fall_speed = 200


func _on_Yuh_area_entered(other_area : Area2D):
	if(other_area.get_parent() is Player):
		other_area.get_parent()._laser_scene = new_laser
		queue_free()
	
	if (other_area.name == "Lose_Points"):
		self.queue_free()

func _process(delta):
	position.y += delta * _fall_speed
