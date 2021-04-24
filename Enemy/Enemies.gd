extends Spatial

onready var Enemy = preload("res://Enemy/Enemy.tscn")
export var initial_position = Vector3(0, 0, -17)

func _process(_delta):
	if not has_node("Enemy"):
		var enemy = Enemy.instance()
		enemy.name = "Enemy"
		add_child(enemy)
