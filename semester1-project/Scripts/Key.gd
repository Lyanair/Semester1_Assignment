extends Sprite2D

@export var keybind = "a"
@export var Pianosound: Node
@export var Drumsound: Node
@export var Mouthsound: Node
var currsound

func _on_button_button_down() -> void:
	currsound = Pianosound
	print("Piano Button")
	
func _on_button_2_button_down() -> void:
	currsound = Drumsound
	print("Drum Button")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed(keybind):
		currsound.play()
		self.modulate = Color.RED
		print("a")
	
	if Input.is_action_just_released(keybind):
		self.modulate = Color.WHITE


func _on_h_slider_value_changed(value: float) -> void:
	currsound.volume_db = linear_to_db(value)


func _on_h_slider_2_value_changed(value: int) -> void:
	currsound.pitch_scale = value
