extends KinematicBody

var player = null
var speed = 4

onready var rc = $RayCast

func _physics_process(_delta):
	if player == null:
		player = get_node_or_null("/root/Game/Player")
	if player != null:
		look_at(player.global_transform.origin, Vector3.UP)
	if rc.is_colliding():
		var c = rc.get_collider()
		if c.is_in_group("Player"):
			var target = player.translation - translation
			var direction = target.normalized()
			var _v = move_and_slide(speed*direction)


func _on_Area_body_entered(body):
	if body.name == "Player":
		var _scene = get_tree().change_scene("res://UI/Lose.tscn")	

