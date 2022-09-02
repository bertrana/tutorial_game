extends KinematicBody2D

var dest = "right";
var speed = 60;

func _physics_process(delta):
	if dest == "right":
		move_and_slide(Vector2(speed, 0));
	else:
		move_and_slide(Vector2(-speed, 0));
	
	if position.x > 200 && dest == "right":
		dest = "left";
	if position.x < 100 && dest == "left":
		dest = "right";	

