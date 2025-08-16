extends Node

class_name LightDarkManager

var counter: float
var paused: bool

func _init() -> void:
	counter = 0

func _process(delta: float) -> void:
	if not paused:
		if abs(Player.velocity) >= 0.1:
			counter += 1 * delta
		if abs(Player.velocity) == 0.0:
			counter -= 1 * delta
			
			
func reset_counter():
	counter = 0
	
func pause():
	paused = true
	
func unpause():
	paused = false
