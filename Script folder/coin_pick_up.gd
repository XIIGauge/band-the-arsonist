extends Node2D


@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var game_manager: GameManager = %GameManager




func _on_area_2d_body_entered(body: Node2D) -> void:
	print("coin picked up")
	animation_player.play("PickUp")
	game_manager.add_points(1)
	
	
	
	
