extends Node2D

func _process(delta):
	change_scene()

func _on_doorway_body_entered(body):
	if body.has_method("player"):
		global.destination = "jacks_room"
		global.transition_scene = true

func _on_doorway_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false

func change_scene():
	if global.transition_scene == true:
		if global.current_scene == "hallway" && global.destination == "jacks_room":
			SceneTransition.change_scene("res://Scenes/jacks_room.tscn")
			global.finish_scene_change()
		if global.current_scene == "hallway" && global.destination == "kitchen":
			SceneTransition.change_scene("res://Scenes/kitchen.tscn")
			global.finish_scene_change()

func _on_doorway_2_kitchen_body_entered(body):
	if body.has_method("player"):
		global.destination = "kitchen"
		global.transition_scene = true
