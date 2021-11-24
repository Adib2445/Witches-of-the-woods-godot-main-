extends Node2D

var count = 0
var Bg = preload('res://Scene/Ocean.tscn')

func _physics_process(delta):
	pass
	
	
	if count == 100:
		print("Waited one second")
		var Spawn_Bg = Bg.instance()
		add_child(Spawn_Bg)
		count = 0
	else:
		count += 1
		
func _ready():
	var Spawn_Bg = Bg.instance()
	add_child(Spawn_Bg)
	
