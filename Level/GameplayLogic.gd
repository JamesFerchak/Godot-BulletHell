extends Node2D

#general game variables
var score
var health = 3;
var fire_collected

#player reference
@onready var player : CharacterBody2D = $Player

#Marker references

@onready var left_marker_1 : Marker2D =$LeftMarker1
@onready var left_marker_2 : Marker2D =$LeftMarker2
@onready var left_marker_3 : Marker2D =$LeftMarker3
@onready var left_marker_4 : Marker2D =$LeftMarker4
@onready var left_marker_5 : Marker2D =$LeftMarker5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if health == 0: #if the tree buddy's health goes to 0 end the game and go to results
		endGame()
	

func endGame():
	get_tree().change_scene_to_file("res://Main Menu/MainMenu.tscn")
