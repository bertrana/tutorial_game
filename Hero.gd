extends KinematicBody2D

var dest = "right";
var speed = 60;
var directions = [];

func _physics_process(delta):
	for dir in ["left", "right", "up, down"]:
		if dir == "right":
			move_and_slide(Vector2(speed, 0));
		else:
			move_and_slide(Vector2(-speed, 0));
	
func _choose_dir(dir):
	if dir == "left":
		return (speed, 0);
	else if dir == "right":
		return (-speed, 0);
