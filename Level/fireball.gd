extends Area2D

var xrng = RandomNumberGenerator.new()
var yrng = RandomNumberGenerator.new()
var xvelocity
var yvelocity
# Called when the node enters the scene tree for the first time.
func _ready():
	xvelocity = xrng.randf_range(-800.0,800.0)
	yvelocity = yrng.randf_range(-800.0,800.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.x * xvelocity * delta
	position += transform.y * yvelocity * delta

func assignspeed(x1,x2,y1,y2):
	xvelocity = xrng.randf_range(x1,x2)
	yvelocity = yrng.randf_range(y1,y2)


func _on_body_entered(body):
	if body.is_in_group("player"):
		GameplayLogic.fire_collected += 1;
		pass
	if body.is_in_group("tree"):
		GameplayLogic.health -= 1
		pass
	queue_free()
	

