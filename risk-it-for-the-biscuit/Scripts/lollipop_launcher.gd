extends Node2D
@onready var camera_2d: Camera2D = $"../Player/Camera2D"
var scene = preload("res://Scenes/lollipop_launcher.tscn")
var wait = 3

func _ready() -> void:
	await get_tree().create_timer(wait).timeout

	

func _process(delta: float) -> void:
	move_local_x(-50*delta)
