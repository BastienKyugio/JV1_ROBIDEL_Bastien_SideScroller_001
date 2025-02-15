if (room != R_Menu) && (instance_exists(O_Player)) && (global.shells >0)
{
	shellsTextScale = max(shellsTextScale * 0.95, 3);
	draw_set_color(c_black);
	draw_set_font(F_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed(RES_W-15,12,string(global.shells) + "  ", shellsTextScale, shellsTextScale, 0);
	draw_set_color(c_yellow);
	draw_text_transformed(RES_W-13,10,string(global.shells) + "  ", shellsTextScale, shellsTextScale, 0);
}   