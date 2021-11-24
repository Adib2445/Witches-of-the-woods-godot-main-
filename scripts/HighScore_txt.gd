extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _ready():
	$MainHightScore_txt.text = str(Globalvar.hightscore)
