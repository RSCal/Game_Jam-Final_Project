extends Label

var time_elapsed := 0.0
var time = 30.0
var seconds := fmod(time, 60)
var milliseconds := fmod(time, 1) * 100

func _process(delta: float) -> void:
	time_elapsed += delta
	text = _format_seconds(time - time_elapsed, true)
	if time_elapsed >= time:
		var _scene = get_tree().change_scene("res://UI/GameOver.tscn")

func _format_seconds(time : float, use_milliseconds : bool) -> String:
	var seconds := fmod(time, 60)
	var milliseconds := fmod(time, 1) * 100
	return "%02d:%02d" % [seconds, milliseconds]


