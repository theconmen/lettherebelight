extends CanvasLayer

class_name LightDarkLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Lightdarkmanager.light_layer_material = $ColorRect.material
