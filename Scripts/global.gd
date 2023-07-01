extends Node

var current_scene = "jacks_room"
var transition_scene = false

func finish_scene_change(): 
	if transition_scene == true:
		transition_scene = false
	if current_scene == "jacks_room":
		current_scene = "hallway"
	else: if current_scene == "hallway":
		current_scene = "jacks_room"
		
