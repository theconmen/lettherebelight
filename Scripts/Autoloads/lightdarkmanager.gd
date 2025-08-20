extends Node

class_name LightDarkManager

var counter: float
var paused: bool
var player: Player
var light_layer_material: Material
# it should get brighter slower than it gets darker
@export var brightness_controller: float = 10.0
@export var darkness_controller: float = 5.0
@export var counter_maximum: float = 2.0
@export var counter_minimum: float = 0.0

func _init() -> void:
	counter = 0

func _process(delta: float) -> void:
	if not paused:
		if counter < counter_maximum:
			if abs(player.velocity.x) >= 0.1:
				counter += (1 * delta)/brightness_controller
		if counter > counter_minimum:
			if abs(player.velocity.x) == 0.0:
				counter -=  (1 * delta)/darkness_controller
		light_layer_material.set_shader_parameter('brightness', counter)
			
			
func reset_counter():
	counter = 0
	
func pause():
	paused = true
	
func unpause():
	paused = false
	
func get_counter():
	return counter
