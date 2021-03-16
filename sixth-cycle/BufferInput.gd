extends Node

const Timestamp = preload("res://TimestampBuffer.gd")

var is_active : bool
var timer : float

var buffer = []

var name_action : String

func _ready():
	self.is_active = false
	self.timer = 0

func attach_event_action(var action : String):
	self.name_action = action

func _physics_process(delta):
	if(!Input.is_action_just_pressed(name_action) and !Input.is_action_just_released(name_action)):
		self.timer += delta
	else:
		var timestamp_new = Timestamp.new()
		timestamp_new.status = self.is_active
		timestamp_new.timestamp = OS.get_ticks_msec()
		if(buffer.size() > 127):
			buffer.pop_back()
		buffer.push_front(timestamp_new)
		self.timer = 0
		self.is_active = !self.is_active
