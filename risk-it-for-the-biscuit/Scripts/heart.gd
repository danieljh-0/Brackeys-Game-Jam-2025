extends Area2D
@onready var health: Label = $"../CanvasLayer/health"
@onready var heart: Area2D = $"."
@onready var animation_player: AnimationPlayer = $AnimationPlayer

@export var id: String



func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Globals.playerHealth += 1
		health.text = ""
		for i in range(Globals.playerHealth):
			health.text = health.text + "❤️"
		animation_player.play("pickup")
		#Globals.Heart1Collected = true
		Globals.heartsCollected[id] = true
		


func _on_ready() -> void:
	if Globals.heartsCollected[id]:
		heart.queue_free()
