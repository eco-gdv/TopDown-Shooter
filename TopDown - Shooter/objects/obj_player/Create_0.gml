move_speed = 5
hspd = 0
vspd = 0

timer = 0
rate = room_speed * 0.2

///@method move(right, left, down, up)
move = function(right, left, down, up)
{
	hspd = (right - left) * move_speed
	vspd = (down - up) * move_speed
	
	x += hspd
	y += vspd
}

///@method aim_and_fire()
aim_and_fire = function()
{
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	
	image_angle = _dir
	
	var _fire = mouse_check_button(mb_left)
	
	if timer <= 0 
	{ 
		if _fire
		{
			var _bullet = instance_create_layer(x, y, "Bullets", obj_bullet)
			_bullet.direction = _dir
			timer = rate
		}
	}
	else
	{
		timer-- 
	}
	
}

///@method anim(right, left, down, up)
anim = function(right, left, down, up)
{
	if right || left || down || up
	{ 
		image_speed = 1
	}
	else
	{
		image_speed = 0
		image_index = 2
	}
}