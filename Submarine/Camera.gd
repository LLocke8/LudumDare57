extends Camera2D

#@export var camera_speed : int = 35

@export var zoom_in_limit : int = 2
@export var zoom_out_limit : int = 2

#@export var limit_r = 2400
#@export var limit_l = -400
#@export var limit_t = -400
#@export var limit_b = 800 

#func _physics_process(_delta):
	#
	#var dir = Vector2.ZERO
	#
	#dir.x = int(Input.is_action_pressed("Right")) - int(Input.is_action_pressed("Left"))
	#dir.y = int(Input.is_action_pressed("Down")) - int(Input.is_action_pressed("Up"))
	#
	#var nexpos = (global_position + (dir*camera_speed))
	#
	#if nexpos.x > limit_l and nexpos.x < limit_r: 
		#global_position.x += dir.x * camera_speed
	#if nexpos.y > limit_t and nexpos.y < limit_b: 
		#global_position.y += dir.y * camera_speed

func _unhandled_input(event):
	if Input.is_action_pressed("Zoom_out"):
		if zoom > Vector2(1,1) / zoom_in_limit:
			zoom += Vector2(-0.1,-0.1)
	if Input.is_action_pressed("Zoom_in"):
		if zoom < Vector2(1,1) * zoom_out_limit:
			zoom += Vector2(0.1,0.1)
