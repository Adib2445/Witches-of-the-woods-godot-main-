 extends Node2D

var count = 0
var scene = preload("res://Scene/Obs.tscn")
var wold = 'res://World.tscn'
func _physics_process(_delta):
	  
	
	var node = scene.instance()
	
	$AnimationPlayer.play("SpawwnerIdeal")
	
	if count == 40:
		
		node.position = position;
		get_parent().add_child(node)
		count = 0
	else:
		count += 1
	pass
