extends RigidBody2D
var vel:=0.0

func _physics_process(_delta: float) -> void:
	var dir = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	if dir > 0.0:
		vel= lerp(vel, 70, 0.35)
	elif dir < 0.0:
		vel= lerp(-200, dir * 30, 0.45)
	else:
		vel= lerp(vel, 0.0, 0.15)

#	$wheel_F.apply_torque_impulse(vel)
#	$wheel_R.apply_torque_impulse(vel)
	$wheel_F.angular_velocity = vel
	$wheel_R.angular_velocity = vel
	

