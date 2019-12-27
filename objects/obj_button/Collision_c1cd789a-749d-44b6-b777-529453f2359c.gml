/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_laserbox) and image_index=0{
var my_cid = connect_id;
with(obj_laserbox){
	if	connect_id = my_cid{
	if laseron=true{laseron=false}else{laseron=true}
	
	}
}
}

if  instance_exists(obj_invisibleblock)and image_index=0{
var my_cid = connect_id;

with(obj_invisibleblock){
	if	connect_id = my_cid{
	instance_destroy()	
	}
}	
}

if  instance_exists(obj_appearingblock)and image_index=0{
var my_cid = connect_id;

with(obj_appearingblock){
	if	connect_id = my_cid{
	instance_change(obj_wall,false)	
	}
}	
}
image_index=1
