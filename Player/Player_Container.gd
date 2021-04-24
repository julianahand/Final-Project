extends Spatial

onready var Player = preload("res://Player/Player.tscn")
export var initial_position = Vector3(1, 0, 1)

func _process(_delta):
	
	if not has_node("Player"):
		pass
		var player = Player.instance()
		pass
		#player.position = initial_position
		#player.name = "Player"
		#player.add_to_group("Player")
		#add_child(player)
