extends Label


func _process(delta):
	text = "Score : " + str(GameState.score)
