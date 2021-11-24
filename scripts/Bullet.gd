extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 750

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	position -= transform.y * speed * delta
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Area2D_area_entered(area):
	queue_free()
