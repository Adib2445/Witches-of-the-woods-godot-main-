extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var plBullet  = preload('res://Scene/Bullet.tscn')

var mouse_pos 
var CanShoot = false
onready var firingPos := $FirePos
# Called when the node enters the scene tree for the first time.
var count = 0


	


func _physics_process(_delta):
	
	mouse_pos = get_global_mouse_position()
	position.y  = mouse_pos.y
	if  CanShoot == true:
		CanShoot  = false;
		for child in  firingPos.get_children():
			 var bullet = plBullet.instance()
			 bullet.global_position = child.global_position
			 get_tree().current_scene.add_child(bullet)
			
	if count == 20:
		print("Waited one second")
		CanShoot = true
		count = 0
	else:
		count += 1
		
	
		




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
