extends AnimatableBody2D

@onready var plat_animation: AnimationPlayer = $PlatAnimation



func _on_area_2d_body_entered(body: Node2D) -> void:
	plat_animation.play("new_animation")
