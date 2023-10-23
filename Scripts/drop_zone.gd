extends Marker2D


func _draw():
	draw_circle(Vector2.ZERO, 75, Color.BLANCHED_ALMOND)
	#draw_rect(Rect2(1.0, 1.0, 150.0, 150.0), Color.GREEN)
	#draw_line(Vector2(1.5, 1.0), Vector2(1.5, 150.0), Color.GREEN, 150.0)
	#draw_rect(Rect2(16.0, 2.0, 150.0, 150.0), Color.GREEN, false, 50.0)
	
func select():
	for child in get_tree().get_nodes_in_group("zone"):
		child.deselect()
	modulate = Color.WEB_MAROON
	
func deselect():
	modulate = Color.WHITE
