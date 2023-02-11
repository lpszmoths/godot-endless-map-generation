extends Node2D

func _ready():
	var chunk1 = load("res://test/endless_map_chunk_1.tscn")
	var chunk2 = load("res://test/endless_map_chunk_2.tscn")
	var chunk3 = load("res://test/endless_map_chunk_3.tscn")
	var chunk_scenes: Array = [chunk1, chunk2, chunk3]
	var i: int = randi() % chunk_scenes.size()
	var scene: PackedScene = chunk_scenes[i]
	var parent: Node2D = get_parent()
	var instance = scene.instance()
	var instane_transform = transform
	#parent.add_child(instance)
	add_child(instance)
	#instance.transform = instane_transform
	#queue_free()
