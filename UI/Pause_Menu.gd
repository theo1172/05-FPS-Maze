extends Control

var button_sound = null

func _ready():
	pass

func play_sound():
	button_sound = get_node_or_null("/root/Game/Sounds/Menu_Button")
	if button_sound != null:
		button_sound.play()

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		play_sound()

func _on_Continue_pressed():
	play_sound()
	if visible:
		hide()
		get_tree().paused = false

func _on_Quit_pressed():
	play_sound()
#	yield(button_sound, "finished")
	get_tree().quit()
