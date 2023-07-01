extends Node

var current_scene = "jacks_room"
var destination = ""
var transition_scene = false

func finish_scene_change(): 
	if transition_scene == true:
		transition_scene = false
		current_scene = destination
