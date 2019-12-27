/// @description Insert description here
// You can write your code in this editor
if global.ifInEditorMode=0{
if !instance_exists(obj_controller){
instance_create_layer(0,0,"instances",obj_restartcontroller)
instance_destroy()
}else{instance_destroy()}}