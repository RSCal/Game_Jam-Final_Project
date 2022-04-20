extends Label

var time_elapsed := 0.0
var time=0

func _process(delta: float) -> void:
	time_elapsed += delta

var seconds := fmod(time, 60)
var milliseconds := fmod(time, 1) * 100

func _format_seconds(time : float, use_milliseconds : bool) -> String:
	var seconds := fmod(time, 60)
	var milliseconds := fmod(time, 1) * 100
	return "%02d:%02d:%02d" % [seconds, milliseconds]
