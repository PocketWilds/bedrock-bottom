extends Node

var TRANSITION_TIME = 3
var timer

func _ready():
	timer = 0
	pass

func _physics_process(delta):
	if(Input.is_action_pressed("debug_p1_button_start")):
		timer += TRANSITION_TIME
	timer += delta
	if(timer > TRANSITION_TIME):
		LoaderScene.goto_scene("res://ScreenIntro.tscn")
		pass

