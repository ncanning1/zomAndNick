extends Sprite

var start = Vector2(0,0)
var size = Vector2(64, 64)
var end = Vector2(size.x * 10, size.y * 10)

func _draw():
	var a = start.x
	var b = start.y
	while(a < end.x):
		while(b < end.y):
			draw_texture(self.get_texture(), Vector2(a, b))
			b += size.y
		a += size.x
		b = start.y