extends KinematicBody2D

var mouse_pos 
var rotation_dir = 0
var velocity = Vector2()

func _physics_process(_delta):
	mouse_pos = get_global_mouse_position()
	position.y  = mouse_pos.y
	rotation_dir += 1
	
	
	
func _input(event):
	if event is InputEventMouseMotion:
		if event.relative.y < 0:
			print("Moving right")
			rotation_degrees = -10
		if event.relative.y > 0:
			print("Moving left")
			rotation_degrees = 10
		
	


func _on_Area2D_area_entered(area):
	get_tree().change_scene('res://Scene/MainMEnu.tscn')
