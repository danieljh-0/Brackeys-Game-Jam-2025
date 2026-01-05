extends Area2D
@onready var timer: Timer = $Timer
@onready var health: Label = get_tree().get_root().get_node("Node2D/CanvasLayer/health")
@onready var gameOver: Label = get_tree().get_root().get_node("Node2D/CanvasLayer/gameOver")

@onready var animation_player: AnimationPlayer = get_node("/root/Node2D/Player/AnimationPlayer")



func _on_body_entered(body: Node2D) -> void:
	print(body.name)
	if body.name == "Player":	
		if Globals.playerHitThisFrame == true:
			return
		else:
			Globals.playerHitThisFrame = true
			body.get_node("CollisionShape2D").queue_free()
			animation_player.play("hit")
			Globals.playerHealth -= 1
			print(Globals.playerHealth)
			health.text = ""
			for i in range(Globals.playerHealth):
				health.text = health.text + "❤️"
			if Globals.playerHealth <= 0:
				gameOver.visible = true
				#get_tree().quit()
			else:
				timer.start()
	


func _on_timer_timeout() -> void:
	Globals.playerHitThisFrame = false
	get_tree().reload_current_scene()

		
