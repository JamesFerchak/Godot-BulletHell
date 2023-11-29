extends Area2D

var yrng = RandomNumberGenerator.new()
var xvelocity
var yvelocity
# Called when the node enters the scene tree for the first time.
func _ready():
	assignspeed(GameplayLogic.bulletspeedx, GameplayLogic.bulletspeedy1, GameplayLogic.bulletspeedy2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.x * xvelocity * delta
	position += transform.y * yvelocity * delta

func assignspeed(x,y1,y2):
	xvelocity = x
	yvelocity = yrng.randf_range(y1,y2)


func _on_body_entered(body):
	if body.is_in_group("player"):
		GameplayLogic.fire_collected += 1
		GameplayLogic.score += 100
		pass
	if body.is_in_group("tree"):
		GameplayLogic.health -= 1
		pass
	queue_free()
	



func _on_destroy_timer_timeout():
	queue_free()
