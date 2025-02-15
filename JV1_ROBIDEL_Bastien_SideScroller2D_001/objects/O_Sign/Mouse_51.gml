if (point_in_circle(O_Player.x, O_Player.y, x, y, 64)) && (!instance_exists(O_Texte))
{
	with (instance_create_layer(x, y-64, layer, O_Texte))
	{
		text = other.text; 
		length = string_length(text);
	}
	
	with (O_camera)
	{
		follow = other.id;
	}
}