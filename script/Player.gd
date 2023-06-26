extends KinematicBody2D

onready var m = $AudioStreamPlayer2D
onready var ms = $xxx
onready var enemy = preload("res://Scene/Obstacle.tscn")
onready var scoreman = get_parent().get_node("score/Label")
onready var loot = preload("res://script/loot.gd")
const high = preload("res://Scene/Lb.tscn")
export var gravity = 100
export var jump_force = 500
export var player_speed = 500
var velocity = Vector2.ZERO
var score_file = "user://highscore.save"
var highscore



var score = 0 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

func _physics_process(delta):
	
	
	
	#Movement
	if Input.is_action_pressed("left"):
		velocity.x = -player_speed 
		#$Sprite.flip_h = true
	elif Input.is_action_pressed("right"):
		velocity.x = player_speed
		#$Sprite.flip_h = false
	else:
		velocity.x = lerp(velocity.x, 0, 0.1)

	
	#Jump
	#if Input.is_action_just_pressed("Jump") and is_on_floor():
	#	velocity.y = -jump_force
		#print("jump")
	
	
	#Gravity
	#velocity.y += gravity * delta
	 
	move_and_slide(velocity, Vector2.UP)
	
	


func _on_Area2D_body_entered(body):
	if body.name == "coin":
		m.playing = true
		ms.playing = false
		soo()
		scoreman.set_text( "Score : " + str(score))
	elif body.name == "Ob":
		m.playing = false
		ms.playing = true
		queue_free()
		print("died")
		get_tree().change_scene("res://Scene/Lb.tscn")
	else:
		m.playing = false
		ms.playing = false



func soo():
	score += 1
	print(score)



