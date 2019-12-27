/// @description Insert description here
// You can write your code in this editor
//draw_sprite(spr_cubeadventure,0,room_width-640,room_height-480)

draw_set_halign(fa_left)
if info=1{

draw_set_font(fnt_main)
draw_set_color(c_white)
draw_set_color(c_black)
var xx=310
var xxright = xx+point_distance(xx,0,room_width/2,0)-xx
if xxright<xx{xxright=310}
var yy
yy=180
if room_height>480{yy=240}
draw_rectangle(xxright,room_height/2-yy-40,room_width/2+300,room_height/2+yy-40,false)
draw_sprite_stretched(spr_cubeadventure,0,xxright,room_height/2-yy-40,point_distance(xxright,0,(room_width/2)+300,0),point_distance(0,room_height/2-yy,0,room_height/2+yy))

draw_set_colour(c_white)
draw_text(xxright,room_height/2+yy-string_height(txt[0])+2,+string(txt[0]))
draw_text(xxright,room_height/2+yy+2,+string(txt[1]))
draw_text(xxright,room_height/2+yy+2+string_height(txt[0]),+"Build Version: " + GM_version)
draw_set_colour(c_black)
}
//Apply Room Size
/*if leveleditor=1{
draw_set_color(c_gray)
draw_rectangle(room_width-room_width+340,room_height-room_height+300,x+470,room_height-room_height+320,false)
draw_set_color(c_white)
draw_text_transformed(room_width-room_width+360,room_height-room_height+300,"Apply",1,1,0)
draw_text_transformed(room_width-room_width+320,room_height-room_height+190,"Write width and height",1,1,0)
}





//draw_text(32, room_height-30, "Runtime Version:" + GM_runtime_version);

