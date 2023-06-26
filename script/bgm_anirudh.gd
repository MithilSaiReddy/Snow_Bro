extends AudioStreamPlayer2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var a = get_node("/root/Bgm")
# Called when the node enters the scene tree for the first time.
func _ready():
	a.play()

