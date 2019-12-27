/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_teleport2){
var my_cid = connect_id;
with(obj_teleport2){
	if	connect_id = my_cid{
		if obj_player.direction=90{
		obj_player.x=obj_teleport2.x
		obj_player.y=obj_teleport2.y-32
		}
		if obj_player.direction=180{
		obj_player.x=obj_teleport2.x-32
		obj_player.y=obj_teleport2.y
		}
		if obj_player.direction=270{
		obj_player.x=obj_teleport2.x
		obj_player.y=obj_teleport2.y+32
		}
		if obj_player.direction=0{
		obj_player.x=obj_teleport2.x+32
		obj_player.y=obj_teleport2.y
		}
	}
}
}