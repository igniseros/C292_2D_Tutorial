extends Node2D

class_name BadGuy

export var _speed : int = 10

func _process(delta):
	position.y += delta * _speed


func _on_Area2D_area_entered(other_area : Area2D):
	if(other_area.get_parent() is Proj):
		(other_area.get_parent() as Proj).die()
		GameState.increase_score(10)
		self.queue_free() # destroy
	
	#increase score
	
	if (other_area.get_parent() is Player):
		GameState.init_game_over()
	
	if (other_area.name == "Lose_Points"):
		GameState.increase_score(-15)
		self.queue_free()
