extends KinematicBody

var player = null
var damage = 10

func _ready():
	pass
	
func _physics_process(_delta):
	if player == null:
		player = get_node_or_null("/root/Game/Player")
	if player != null:
		look_at(player.global_transform.origin, Vector3.UP)
		if $RayCast.is_colliding():
			var c = $RayCast.get_collider()
			if c.name == "Body":
				$Timer.start()

func _on_Kill_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://UI/Game_Over.tscn")


func _on_Timer_timeout():
	if $RayCast.is_colliding():
		var c = $RayCast.get_collider()
		if c.name == "Body":
			Global.update_health(10)
	$Flash.shoot()
