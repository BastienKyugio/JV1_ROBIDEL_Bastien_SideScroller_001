x = O_Player.x;
y = O_Player.y + 10;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay = 50;
	with (instance_create_layer(x, y, "Bullet", O_Bullet))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}
