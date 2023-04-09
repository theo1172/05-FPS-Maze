extends Area

func _ready():
	pass


func _on_key_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		if exit != null:
			exit.unlock()
		var sound = get_node_or_null("/root/Game/Sounds/Key")
		if sound != null:
			sound.play()
		Global.update_score(100)
		queue_free()
