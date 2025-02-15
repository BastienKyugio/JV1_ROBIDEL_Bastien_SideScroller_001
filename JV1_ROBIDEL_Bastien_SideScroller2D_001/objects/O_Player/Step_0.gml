press_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
press_left = keyboard_check(vk_left) || keyboard_check(ord("Q"));
press_jump = keyboard_check(vk_up) || keyboard_check(vk_space) || keyboard_check(ord("Z"));
 
var move = press_right - press_left;
hspd = move * walkspd;
vspd = vspd + grav;

canJump --;
if(canJump > 0) and (press_jump)
{
	vspd = -5;
	canJump = 0;
}
 
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
	while (!place_meeting(x, y + sign(vspd), O_Ground))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}
y = y + vspd;

if (!place_meeting(x, y + 1, O_Ground))
{
	sprite_index = S_PlayerJump;
}
else
{
	canJump = 10;
	if (hspd == 0)
	{
		sprite_index = S_Player;
	}
	else
	{
		sprite_index = S_PlayerRun;
	}
}

if (hspd != 0)
{
	image_xscale = sign(hspd);
}