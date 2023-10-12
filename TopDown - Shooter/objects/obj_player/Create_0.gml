move_speed = 5
hspd = 0
vspd = 0

///@method move(right, left, down, up)
move = function(right, left, down, up)
{
	hspd = (right - left) * move_speed
	vspd = (down - up) * move_speed
	
	x += hspd
	y += vspd
}

aiming = function()
{
	image_angle = point_direction(x, y, mouse_x, mouse_y)
}

anim = function()
{
	if hspd == 0 && vspd == 0 
	{ 
		image_speed = 0
		image_index = 2
	}
	else
	{
		image_speed = 1
	}
}