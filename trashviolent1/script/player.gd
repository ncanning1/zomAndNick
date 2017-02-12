extends Sprite

var velocity = Vector2(0,0)
var curPos = Vector2(0,0)

func _ready():
	curPos = self.get_pos()
	self.set_process(true)

func _process(delta):
	if(Input.is_key_pressed(KEY_W)):
		velocity.y = -100 * delta
	elif(Input.is_key_pressed(KEY_S)):
		velocity.y = 100 * delta
	else:
		velocity.y = 0
	if(Input.is_key_pressed(KEY_A)):
		velocity.x = -100 * delta
	elif(Input.is_key_pressed(KEY_D)):
		velocity.x = 100 * delta
	else:
		velocity.x = 0
	curPos.y += velocity.y
	curPos.x += velocity.x
	self.set_pos(curPos)