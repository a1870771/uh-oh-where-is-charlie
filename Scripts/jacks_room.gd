extends Node2D

func _process(delta):
	change_scene()

func _on_doorway_body_entered(body):
	if body.has_method("player"):
		global.destination = "hallway"
		global.transition_scene = true
		body.visible = false

func _on_doorway_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false

func change_scene():
	if global.transition_scene == true:
		if global.current_scene == "jacks_room" && global.destination == "hallway":
			SceneTransition.change_scene("res://Scenes/hallway.tscn")
			global.finish_scene_change()
