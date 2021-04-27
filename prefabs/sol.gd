extends StaticBody2D



func _ready() -> void:
	var curve = $Path2D.curve
	var polygon = curve.get_baked_points()
	print(polygon.size())

	$CollisionPolygon2D.polygon = polygon
	$Polygon2D.polygon = polygon
	$Line2D.points = polygon
