extends CharacterBody2D


@export var speed = 1000


func get_input():
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	
func _physics_process(delta):
	get_input()
	move_and_slide()
