extends Spatial


# Called when the node enters the scene tree for the first time.
func _ready():
	var button_new_game = get_node("MenuMain/ContainerMenu/NewGame/TextureButton")
	button_new_game.connect("pressed", self, "_button_pressed_new_game")
	
	var button_load_game = get_node("MenuMain/ContainerMenu/LoadGame/TextureButton")
	button_load_game.connect("pressed", self, "_button_pressed_load_game")
	
	var button_options = get_node("MenuMain/ContainerMenu/Options/TextureButton")
	button_options.connect("pressed", self, "_button_pressed_options")
	
	var button_exit = get_node("MenuMain/ContainerMenu/Exit/TextureButton")
	button_exit.connect("pressed", self, "_button_pressed_exit")

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass

func _button_pressed_new_game():
	LoaderScene.goto_scene("res://Scenes/LevelMain.tscn")

func _button_pressed_load_game():
	print("LOAD_GAME")
	pass

func _button_pressed_options():
	print("OPTIONS")
	pass

func _button_pressed_exit():
	self.get_tree.quit()
