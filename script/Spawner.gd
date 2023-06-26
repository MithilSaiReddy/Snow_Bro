extends Node2D
const mobs_1 = preload("res://Scene/Coin.tscn")
const mobs_2 = preload("res://Scene/Obstacle.tscn")
#const mobs_3 = preload("res://Mobs_3.tscn")     

func spawn_mobs_1():
	var new_mobs_1 = mobs_1.instance()
	call_deferred("add_child", new_mobs_1)
	new_mobs_1.position.x = rand_range(0 +10 , 480 - 10 )

func spawn_mobs_2():
	var new_mobs_2 = mobs_2.instance()
	call_deferred("add_child", new_mobs_2)
	new_mobs_2.position.x = rand_range(0 + 10 , 480 - 10 )

#func spawn_mobs_3():
   # var new_mobs_3 = mobs_3.instance()
	#call_deferred("add_child", new_mobs_3)
	#new_mobs_3.position.x = rand_range(25, 195)

func spawn_mobs():
	var randomNum = randi() % 100 + 1

	if randomNum == 1:
		spawn_mobs_1()

	if randomNum == 2:
		spawn_mobs_2()

	#if randomNum == 3:
	   # spawn_mobs_3()
	
	
func _process(delta):
	spawn_mobs()
