extends Node

var score: int = 0
var is_game_over := false

func increase_score(amount) -> void:
	score += amount

func init_game_over() -> void:
	is_game_over = true
