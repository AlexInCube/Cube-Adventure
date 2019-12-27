/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_dropbutton) or instance_exists(obj_dropablebutton) or instance_exists(obj_window) {allow=false}else{alarm[0]=10}





if global.ifInEditorMode=1 and !position_meeting(mouse_x, mouse_y, obj_dropbutton) and !position_meeting(mouse_x, mouse_y, obj_blocklist) and !position_meeting(mouse_x, mouse_y, obj_dropablebutton){
var posx = (mouse_x div 32) * 32;
var posy = (mouse_y div 32) * 32;
if !position_meeting(posx + 16, posy + 16, obj_saveable){
instance_create_layer(posx, posy, "instances", global.block)}
}


