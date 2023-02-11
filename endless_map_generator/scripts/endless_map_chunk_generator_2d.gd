extends Area2D

export(PackedScene) var scene_to_generate: PackedScene
export(int) var spawn_scene_this_many_levels_above_placeholder: int = 0

var instance: Node2D

func _ready():
	pass

func _endless_map_generate():
	if scene_to_generate:
		instance = scene_to_generate.instance()
		var parent = get_parent()
		
		for i in range(spawn_scene_this_many_levels_above_placeholder):
			parent = parent.get_parent()
		
		var instance_global_transform = global_transform
		parent.add_child(instance)
		instance.global_transform = instance_global_transform
		#queue_free()

func _endless_map_teardown():
	if instance:
		instance.queue_free()
	queue_free()
