extends Node2D

export var _speed : int = 10

func _process(delta):
	position.y += delta * _speed


func _on_Area2D_area_entered(other_area : Area2D):
	other_area.get_parent().queue_free()
	self.queue_free() # destroy
	
	#increase score
	GameState.increase_score(10)
	
	if (other_area.get_parent() is Player):
		GameState.init_game_over()
