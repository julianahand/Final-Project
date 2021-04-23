extends KinematicBody

var player = null
var enemy = null
var speed = 4

onready var rc = $RayCast

func _physics_process(delta):
	if player == null:
		player = get_node_or_null("/root/Game/Player")
	if player != null:
		look_at(player.global_transform.origin, Vector3.UP)
	if rc.is_colliding():
		var c = rc.get_collider()
		if c.is_in_group("Player"):
			var target = player.translation - translation
			var direction = target.normalized()
			move_and_slide(speed*direction)
			
		
