extends Area2D



func _ready():
	connect("area_entered", self, "_on_area_entered")
	connect("area_exited", self, "_on_area_exited")

func _on_area_entered(area: Area2D):
	if area.has_method("_endless_map_generate"):
		area.call_deferred("_endless_map_generate")

func _on_area_exited(area: Area2D):
	if area.has_method("_endless_map_teardown"):
		area.call_deferred("_endless_map_teardown")
