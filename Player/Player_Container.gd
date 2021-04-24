extends Spatial

onready var Player = preload("res://Player/Player.tscn")
export var initial_position = Vector3(-47, 0, 0)

func _process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		player.translation = initial_position
		player.name = "Player"
		add_child(player)
