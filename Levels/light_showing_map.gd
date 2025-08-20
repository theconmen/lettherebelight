extends TileMapLayer

class_name VariableTiles

# HOW CAN I MAKE THIS CHANGE FOR SPECIFIC TILES??

var brightness: float
var is_visible_to_player: bool

func _ready() -> void:
	set_visibility_to_player(false)
	print(Lightdarkmanager.get_counter())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	brightness = Lightdarkmanager.get_counter()
	#print(Lightdarkmanager.get_counter())
	if brightness >= 0.5 and !is_visible_to_player:
		set_visibility_to_player(true)
	elif brightness < 0.5 and is_visible_to_player:
		set_visibility_to_player(false)
		
		
func set_visibility_to_player(visibility: bool):
	self.visible = visibility
	self.collision_enabled = visibility
	is_visible_to_player = visibility
