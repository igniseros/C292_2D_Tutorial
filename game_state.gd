extends Node

var score: int = 0
var is_game_over := false

func increase_score(amount) -> void:
	if(not is_game_over):
		score += amount

func init_game_over() -> void:
	is_game_over = true


func restart_game() -> void:
	score = 0
	is_game_over = false
