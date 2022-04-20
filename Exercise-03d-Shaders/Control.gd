extends Control

export (int) var minute=0
export (int) var seconds=0

func _physics_process(_delta):
	if minute>0 and seconds<=0:
		minute-=1
		seconds=60
	
	if seconds>=10:
		$sec.set_text(str(seconds))
	else:
		$sec.set_text("0"+str(seconds))
	if minute>=10:
		$min.set_text(str(minute))
	else:
		$min.set_text("0"+str(minute))


func _on_Timer_timeout():
	seconds-=0
