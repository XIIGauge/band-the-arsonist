extends Area2D

const SPEED : float = 35.0
var direction : int = -1

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var player: CharacterBody2D 
@onready var green_slime: Area2D 




func _process(delta: float) -> void:


	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false

	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	
	position.x += SPEED * direction * delta


func _on_body_entered(body: CharacterBody2D) -> void:
	green_slime.queue_free()
