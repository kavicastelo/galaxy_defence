extends Node2D

@onready var hitbox_component: HitboxComponent = $Anchor/HitboxComponent as HitboxComponent
@onready var visible_on_screen_notifier_2d: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D as VisibleOnScreenNotifier2D
@onready var scale_component: ScaleComponent = $ScaleComponent as ScaleComponent

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scale_component.tween_scale()
	hitbox_component.hit_hurtbox.connect(queue_free.unbind(1))
	visible_on_screen_notifier_2d.screen_exited.connect(queue_free)
