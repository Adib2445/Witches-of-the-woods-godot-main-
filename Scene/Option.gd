extends Control



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_MasterVolumeSliderMain_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master") , value)


func _on_Back_MainButton_pressed():
	Globalvar.is_option_selected = false
	pass # Replace with function body.
