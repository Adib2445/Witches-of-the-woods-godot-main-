extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Globalvar.is_option_selected == true:
		$MainMenu.visible = false
		$Option_menu.visible = true
	else:
		$MainMenu.visible = true
		$Option_menu.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_pressed():
	 get_tree().change_scene("res://Scene/World.tscn")


func _on_Quit_pressed():
	get_tree().quit()


func _on_option_pressed():
	Globalvar.is_option_selected = true
	pass # Replace with function body.


func _on_Option_pressed():
	Globalvar.is_option_selected = true
	pass # Replace with function body.
