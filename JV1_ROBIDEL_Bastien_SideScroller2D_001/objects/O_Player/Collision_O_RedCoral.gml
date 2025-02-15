with(O_Gun) instance_destroy();
instance_change(O_PlayerDeath,true);

direction = point_direction(other.x, other.y, x, y);
hspd = lengthdir_x(6, direction);
vspd = lengthdir_y(4, direction)-2;

if (sign(hspd) != 0) image_xscale = sign(hspd);