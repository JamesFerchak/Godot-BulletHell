extends Node2D
#Bullet Reference
@onready var bullet_holder : Node = $BulletHolder
var bullet = preload("res://Level/bullet.tscn")

#Left Marker References
@onready var left_marker_1 : Marker2D = $LeftMarker1
@onready var left_marker_2 : Marker2D = $LeftMarker2
@onready var left_marker_3 : Marker2D = $LeftMarker3
@onready var left_marker_4 : Marker2D = $LeftMarker4
@onready var left_marker_5 : Marker2D = $LeftMarker5

#Pause Menu Reference
@onready var pause_menu : Control = $PauseMenu
@onready var pause_button : Button = $PauseMenu/PauseButton
@onready var main_menu_button : Button = $PauseMenu/MainMenuButton

#RNG var to select a marker
var marker_select = RandomNumberGenerator.new()
var marker_number

# Called when the node enters the scene tree for the first time.
func _ready():
	pause_menu.process_mode = Node.PROCESS_MODE_WHEN_PAUSED


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("PAUSE"):
		get_tree().paused = true
		pause_menu.show()


func _on_pausebutton_pressed():
	pause_menu.hide()
	get_tree().paused = false


func _on_main_menu_button_pressed():
	pause_menu.hide()
	get_tree().change_scene_to_file("res://Main Menu/MainMenu.tscn")
	get_tree().paused = false


func _on_bullet_spawn_timer_timeout():
	marker_number = marker_select.randi_range(1,5)
	spawnbullet(marker_number)
	pass # Replace with function body.

func spawnbullet(num):
	var b = bullet.instantiate()
	bullet_holder.add_child(b)
	print_debug("Bullet Spawned")
	match num:
		1:
			b.position = left_marker_1.global_position
			b.call()
		2:
			b.position = left_marker_2.global_position
		3:
			b.position = left_marker_3.global_position
		4:
			b.position = left_marker_4.global_position
		5:
			b.position = left_marker_5.global_position
	
	pass
