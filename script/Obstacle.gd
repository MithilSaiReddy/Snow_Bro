extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#export var move_speed = 0
var screensize
#var trans = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	screensize = get_viewport().get_visible_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if position.y > screensize.x:
		queue_free()
		print("reoved")


