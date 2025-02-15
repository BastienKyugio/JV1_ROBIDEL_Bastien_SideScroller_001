if (done == 0)
{
	vspd = vspd + grav;
	if (place_meeting(x + hspd, y , O_Ground))
	{
		while (!place_meeting(x + sign(hspd), y, O_Ground))
		{
			x = x + sign(hspd);
		}
		hspd = 0;
	}
	x = x + hspd;
	
	if (place_meeting(x, y + vspd, O_Ground))
	{
		if (vspd>0)
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60
		}
		while (!place_meeting(x, y + sign(vspd), O_Ground))
		{
			y = y + sign(vspd);
		}
		vspd = 0;
	}
	y = y + vspd;
}