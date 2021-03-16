extends Node

const PlayerTest = preload("res://AudioStreamPlayerCustom.tscn")

var volume_bgm : int
var volume_sfx : int
var volume_voice : int

onready var stream_bgm = get_node("StreamBgm")
onready var stream_sfx = get_node("StreamSfx")
onready var stream_voice = get_node("StreamVoice")
onready var controller_stream = get_node("SubconTest")

func _ready():
	controller_stream.play_audio("Metal-Gear-Solid-Codec-Sound.ogg", "call", "Master")
	controller_stream.play_audio("branflakes-Gallant-Challenge-_VRC6-8-Bit_-Genshin-Impact.ogg", "bgm-0", "Master")
