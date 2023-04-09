extends Control

func _ready():
	pass

func _physics_process(_delta):
	$Score.text = "SCORE: " + str(Global.score)
	$Health.text = "HEALTH: " + str(Global.health)
	var gun = get_node_or_null("/root/Game/pistol")
	if gun == null:
		$Gun.text = "Gun obtained"
	var key = get_node_or_null("/root/Game/Maze/key")
	if key == null:
		$Key.text = "Key obtained"
