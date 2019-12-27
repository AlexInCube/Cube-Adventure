/// @description Insert description here
// You can write your code in this editor
var color=c_white
draw_set_alpha(0.5)
draw_rectangle_color(0,0,view_w,view_h,color,color,color,color,false)
draw_set_alpha(1)
draw_rectangle_color(view_w/2-100,view_h/2-100,view_w/2+100,view_h/2+100,color,color,color,color,false)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_font(fnt_game)
draw_text(view_w/2,view_h/2-90,"Level Failed!\nPress R to restart!\nOr ESCAPE to exit")
draw_set_color(c_white)
draw_set_halign(fa_left)