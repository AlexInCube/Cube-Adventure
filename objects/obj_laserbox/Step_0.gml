/// @description Insert description here
// You can write your code in this editor
var angle
if image_index=0{angle=0}//Right
if image_index=1{angle=270}//Down
if image_index=2{angle=180}//Left
if image_index=3{angle=90}//Up


if image_index=0 or image_index=2{
while(!collision_point(x+lengthdir_x(length,angle),y+lengthdir_y(length,angle),o_wall,true,true))and length<room_width
{length++}}
if image_index=1 or image_index=3{
while(!collision_point(x+lengthdir_x(length,angle),y+lengthdir_y(length,angle),o_wall,true,true))and length<room_height
{length++}}

if image_index=0 and laseron=true{
{
laser=instance_create_layer(x,y+14, "instances", obj_laserhit)
laser.image_xscale=length
laser.image_angle=angle}
}
if image_index=1 and laseron=true{

laser=instance_create_layer(x+18,y, "instances", obj_laserhit)
laser.image_xscale=length
laser.image_angle=angle
}
if image_index=2 and laseron=true{

laser=instance_create_layer(x,y+18, "instances", obj_laserhit)
laser.image_xscale=length
laser.image_angle=angle
}
if image_index=3 and laseron=true{

laser=instance_create_layer(x+14,y, "instances", obj_laserhit)
laser.image_xscale=length
laser.image_angle=angle
}

if instance_exists(laser){
if laseron=false{
laser.laseron=false}
}

length=0