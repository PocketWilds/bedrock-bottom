extends Node

const AudioStreamPlayerCustom = preload("res://AudioStreamPlayerCustom.tscn")

var players = []

func _ready():
	pass

func play_audio(var filepath : String, var name : String, var name_bus : String, var volume : float = 0.0, var is_loop : bool = false):
	#check if file exists
	var file_target = File.new()
	if(file_target.file_exists(filepath)):
		#make new timer, stream, and player
		var player_new = AudioStreamPlayerCustom.instance(PackedScene.GEN_EDIT_STATE_MAIN)
		get_node("Players").add_child(player_new)
		players.append(player_new)
		player_new.configure(filepath, name, name_bus, volume, is_loop)
		#let 'er rip
		player_new.play()
	else:
		push_error("Unable to find specified file: " + filepath)
	file_target.close()
