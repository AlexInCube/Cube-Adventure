/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
if present<2{
draw_text(room_width/2,room_height/2,"Alexander Technologies");
if present>0{draw_text(room_width/2,room_height/2+20,"Presents");}
}
if present=2{draw_sprite(spr_nvidiaamd,0,room_width/2-200,room_height/2-100);draw_sprite(spr_nvidiaamd,1,room_width/2,room_height/2-100)
	draw_text(room_width/2,room_height/2-200,"Without support from");}
draw_set_halign(fa_left)
if present=3{draw_sprite(spr_cubeadventure,0,room_width/2-320,room_height/2-240)}
draw_text(5,room_height-20,"Press any key to skip intro")