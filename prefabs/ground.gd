extends StaticBody2D


func _ready() -> void:
	var curve = $Path2D.curve
	var line = curve.get_baked_points()
	print(line.size())
	$Polygon2D.polygon = line
	$CollisionPolygon2D.polygon = line
	$Line2D.points = line
