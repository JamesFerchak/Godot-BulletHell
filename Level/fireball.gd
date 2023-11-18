extends Area2D

var xrng = RandomNumberGenerator.new()
var yrng = RandomNumberGenerator.new()
var xvelocity
var yvelocity
# Called when the node enters the scene tree for the first time.
func _ready():
	xvelocity = xrng.randf_range(-100.0,100.0)
	yvelocity = yrng.randf_range(-100.0,100.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.x * xvelocity * delta
	position += transform.y * yvelocity * delta
