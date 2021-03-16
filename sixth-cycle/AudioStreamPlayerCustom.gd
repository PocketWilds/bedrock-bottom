extends Node

onready var timer = get_node("Timer")
onready var player = get_node("AudioStreamPlayer")

var __is_loop : bool

func _ready():
	pass

func configure(var filepath : String, var name, var name_bus : String, var volume : float = 0.0, var is_loop : bool = false):
		self.name = name
		__set_bus(name_bus)
		__set_stream(filepath)
		self.player.volume_db = volume
		self.__is_loop = is_loop

func __set_bus(var name_bus : String):
	#TODO do proper checking to ensure valid bus names are passed in
	player.bus = name_bus

func __set_stream(var filepath : String):
	var file_target = File.new()
	if(file_target.file_exists(filepath)):
		var stream_new = load(filepath)
		self.player.stream = stream_new
		self.timer.wait_time = stream_new.get_length()
	else:
		push_error("Unable to find specified file: " + filepath)
	
func play():
	player.play()
	if(!__is_loop):
		timer.start()
	
func toggle_pause():
	player.playing = false
	timer.paused = true
	
func stop():
	player.stop()
	timer.stop()
	
func _on_Timer_timeout():
	player.stop()
	timer.stop()
	self.queue_free()
