extends Node2D

#general game variables
var timer = 0
var score = 0
var health = 3;
var fire_collected = 0
var bulletspeedx
var bulletspeedy1
var bulletspeedy2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if health == 0: #if the tree buddy's health goes to 0 end the game and go to results
		endGame()
		pass
	pass


func endGame():
	get_tree().change_scene_to_file("res://Main Menu/MainMenu.tscn")
