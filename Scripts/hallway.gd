extends Node2D

func _process(delta):
	change_scene()

func _on_doorway_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true


func _on_doorway_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false

func change_scene():
	if global.transition_scene == true:
		if global.current_scene == "hallway":
			get_tree().change_scene_to_file("res://Scenes/jacks_room.tscn")
			global.finish_scene_change()
