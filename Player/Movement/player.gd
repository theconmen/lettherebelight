extends CharacterBody2D

class_name Player

var direction: float
const PLAYER_SPEED: float = 100.0
const PLAYER_ACC: float = 25.0
const PLAYER_JUMP: float = -600.0



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Lightdarkmanager.player = self


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * PLAYER_SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, PLAYER_ACC)
	
	if Input.is_action_just_pressed('jump'):
		velocity.y = PLAYER_JUMP
	
	if not self.is_on_floor():
		velocity += get_gravity() * delta
	
	move_and_slide()
	
