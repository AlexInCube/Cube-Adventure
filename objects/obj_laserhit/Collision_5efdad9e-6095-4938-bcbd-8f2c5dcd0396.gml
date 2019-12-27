/// @description Insert description here
// You can write your code in this editor
if global.ifInEditorMode=0{
	show_message("level failed")
	if !instance_exists(obj_controller){
room_restart()}else{with (obj_player) instance_destroy();}}
