extends Area2D

@onready var win: Label = $"../CanvasLayer/win"



func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		win.visible = true
