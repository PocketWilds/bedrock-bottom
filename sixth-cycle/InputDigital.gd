extends Node

var is_active : bool
var time_state : float

func _ready():
	is_active = false
	time_state = 0

func _physics_process(delta):
	time_state += delta

func toggle():
	is_active = !is_active
	time_state = 0
