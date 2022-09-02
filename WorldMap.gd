extends Node2D

func _ready():
	var hero = load("res://Hero.tscn").instance();
	add_child(hero);
