extends Node2D

var wait = 1.5
var scene = preload("res://Scenes/lollipop_launcher.tscn")
@export var spawn_point: Vector2
#var spawn_point = Vector2(587, -10)

func _ready():
	spawn_loop()

func spawn_loop():
	while true:
		var projectile = scene.instantiate()
		projectile.position = spawn_point
		get_parent().add_child(projectile)

		await get_tree().create_timer(wait).timeout
