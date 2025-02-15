myground = instance_create_layer(x, y,layer, O_Ground);
with (myground)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
	image_alpha = 0;
	x +=40;
	y += 80;
	
}