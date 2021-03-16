extends Spatial

var score

# Called when the node enters the scene tree for the first time.
func _ready():
	score = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if(Input.is_action_just_pressed("swing_hammer")):
		score += 1
	
	"""
	if(Input.is_action_just_pressed("debug_save")):
		ControllerSave.save_game()
	elif(Input.is_action_just_pressed("debug_load")):
		ControllerSave.load_game()
	"""
	
	get_node("Label").text = "Number of Clicks: " + str(score)
	
	pass

func save():
	var dict_save = { 
		"filename" : get_filename(),
		"parent" : get_parent().get_path(),
		"pos_x" : self.translation.x,
		"pos_y" : self.translation.y,
		"pos_z" : self.translation.z,
		"score" : score,
	}
	return dict_save
