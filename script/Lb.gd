extends Control


var highscore
onready var s = get_node("/root/Player")
func _on_re_pressed():
	get_tree().change_scene("res://Scene/Main.tscn")

func _ready():
	Player.soo()
	$Label2.set_text(str(Player.score))


func _on_re2_pressed():
	get_tree().change_scene("res://Scene/Main_menu.tscn")
