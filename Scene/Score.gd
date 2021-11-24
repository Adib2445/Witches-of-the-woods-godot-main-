extends Label

var score = 0

func _physics_process(delta):
	score += 1
	#Globalvar.hightscore = score
	$MainScore_txt.text = str(score)
	if score > Globalvar.hightscore:
		Globalvar.hightscore = score
		
	pass
