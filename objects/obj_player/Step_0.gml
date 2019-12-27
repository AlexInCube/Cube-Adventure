/// @description Insert description here
// You can write your code in this editor
var key_up=keyboard_check_pressed(ord("W"))
var key_down=keyboard_check_pressed(ord("S"))
var key_left=keyboard_check_pressed(ord("A"))
var key_right=keyboard_check_pressed(ord("D"))
if move=true and global.ifInEditorMode=0{
if key_up 
{
direction=90
speed=8
move=false
}
if key_down
{
direction=270
speed=8
move=false
}
if key_left
{
direction=180
speed=8
move=false
}
if key_right
{
direction=0
speed=8
move=false
}
}