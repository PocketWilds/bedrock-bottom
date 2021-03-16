extends Node2D

var party

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("BufferInput").attach_event_action("debug_space")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
