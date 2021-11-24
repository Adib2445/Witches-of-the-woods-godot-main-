extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 300
var count = 0
var health = 1
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	position -= transform.x * speed * delta
	if health == 0:
		queue_free()
		
	if count == 1:
		speed += 250
		count = 0
	else:
		count += 1
	pass
	
		





func _on_Area2D_area_entered(area):
	health -= 1
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
