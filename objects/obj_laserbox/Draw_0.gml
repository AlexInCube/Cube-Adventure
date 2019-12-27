/// @description Insert description here
// You can write your code in this editor
draw_self()
if global.ifInEditorMode=true{
draw_text(x+10,y+5,+string(connect_id))

}


/*
if image_index=0 and laseron=true{draw_sprite_ext(spr_laser,0,x+32,y+14,length,1,angle,c_white,1)}
if image_index=1 and laseron=true{draw_sprite_ext(spr_laser,0,x+18,y+32,length,1,angle,c_white,1)}
if image_index=2 and laseron=true{draw_sprite_ext(spr_laser,0,x,y+18,length,1,angle,c_white,1)}
if image_index=3 and laseron=true{draw_sprite_ext(spr_laser,0,x+14,y,length,1,angle,c_white,1)}
length=0