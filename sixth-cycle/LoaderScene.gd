extends Node

#var loader
var scene_current
#var wait_frames
#var time_max = 100 # msec

func _ready():
	var root = get_tree().get_root()
	scene_current = root.get_child(root.get_child_count() - 1)

func goto_scene(path):
	call_deferred("_deferred_goto_scene", path)
	
func _deferred_goto_scene(path):
	scene_current.free()
	var s = ResourceLoader.load(path)
	scene_current = s.instance()
	get_tree().get_root().add_child(scene_current)
	get_tree().set_current_scene(scene_current)
