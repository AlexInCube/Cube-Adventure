/// @description Insert description here
// You can write your code in this editor
if draw_message=true{
	draw_set_font(fnt_game);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left)
	draw_rectangle_color((view_w/2)-(string_width(message)/2),view_y-view_y+10,(view_w/2)+(string_width(message)/2),view_y-view_y+40,c_black,c_black,c_black,c_black,false)
	draw_text(view_w/2-(string_width(message)/2),view_y-view_y+25,""+string(message))
	}