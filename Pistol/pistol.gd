extends Area

func _ready():
	pass


func _on_pistol_body_entered(body):
	if body.name == "Player":
		var sound = get_node_or_null("/root/Game/Sounds/Key")
		if sound != null:
			sound.play()
		Global.update_score(100)
		queue_free()
		var pistol_held = get_node_or_null("/root/Game/Player/Pivot/pistol")
		if pistol_held != null:
			pistol_held.show()
