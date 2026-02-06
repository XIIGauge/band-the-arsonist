extends AnimatableBody2D

@export var plat_animation: AnimationPlayer 




func _on_area_2d_body_entered(body: Node2D) -> void:
	plat_animation.play("PlatMove")




func _on_area_2d_body_exited(body: Node2D) -> void:
	plat_animation.pause()
	
