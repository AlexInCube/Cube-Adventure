/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_colour(c_black);
draw_set_font(fnt_main);
draw_set_halign(fa_center)

draw_text_colour(x+sprite_get_width(spr_dropablemenu)/2, y+sprite_get_height(spr_dropablemenu)/2, string_hash_to_newline(string(txt)),color,color,color,color,1);
