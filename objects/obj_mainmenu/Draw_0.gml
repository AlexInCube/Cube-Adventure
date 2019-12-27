/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_mainmenubg,0,0,0,room_width,room_height)




draw_set_alpha(0.8)
draw_rectangle_colour(30,0,20+(sprite_get_width(spr_mainmenubutton)+28),room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_sprite(spr_logo,animation,50,room_height/2-(sprite_get_height(spr_mainmenubutton)*3)-(sprite_get_height(spr_logo)))








