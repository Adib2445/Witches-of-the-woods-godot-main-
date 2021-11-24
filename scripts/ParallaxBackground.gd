extends ParallaxBackground


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _physics_process(delta):
	$ParallaxLayer.motion_offset.x -= 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
