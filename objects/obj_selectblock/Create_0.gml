/// @description Insert description here
// You can write your code in this editor
allow=true
depth=-5
openwindow=0
if !instance_exists(obj_info){
info=instance_create_layer(0,0,"instances",obj_info)
info.room_w=room_width
info.room_h=room_height
}
global.block=obj_wall


blocklist = ds_list_create();
ds_list_add(blocklist, obj_player, obj_wall, obj_key, obj_finish, obj_deathbox, obj_button, obj_laserbox, obj_invisibleblock, obj_appearingblock, obj_teleport1, obj_teleport2, obj_messageblock, obj_box, obj_breakbleblock);
