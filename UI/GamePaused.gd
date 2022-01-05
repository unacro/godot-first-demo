extends ColorRect

const UNPAUSE_SOUND_SCENE = preload("res://UI/UnpauseSound.tscn")

func _physics_process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().paused = false
		get_parent().add_child(UNPAUSE_SOUND_SCENE.instance())
		queue_free()
	if Input.is_action_just_pressed("ui_cancel"):
		queue_free()
		SCENE_CHANGER.change_scene_to("res://Scenes/Title.tscn")

func _on_BackButton_pressed():
	SCENE_CHANGER.change_scene_to("res://Scenes/Title.tscn")
