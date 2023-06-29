extends Node

var current_scene = "jack_bedroom"
var transition_scene = false

func finish_scene_change(): 
	if transition_scene == true:
		transition_scene = false
	if current_scene == "jack_bedroom":
		current_scene = "hallway"
		
