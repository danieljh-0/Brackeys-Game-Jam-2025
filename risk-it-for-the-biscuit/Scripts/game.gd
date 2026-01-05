extends Node2D
@onready var health: Label = $CanvasLayer/health


func _ready() -> void:
	health.text = ""
	for i in range(Globals.playerHealth):
		health.text = health.text + "❤️"
