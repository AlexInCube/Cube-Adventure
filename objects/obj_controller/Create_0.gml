/// @description Insert description here
// You can write your code in this editor
global.ifInEditorMode=1
layer_create(-99,"instances")
if global.ifInEditorMode=1{
instance_create_layer(0, 0, "instances", obj_selectblock)}

camera = camera_create();
globalvar view_x,view_y,view_w,view_h;
view_w = window_get_width()
view_h = window_get_height()
view_x = 0
view_y = 0

dragging = false
drag_x=0
drag_y=0

global.loadname=""
global.savename=""


