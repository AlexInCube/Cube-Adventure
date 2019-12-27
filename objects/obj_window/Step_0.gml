/// @description Insert description here
// You can write your code in this editor
if extendedwindow=1{
if mouse_check_button_pressed(mb_left) 
&& point_in_rectangle(mouse_x,mouse_y,x,y,x+width-32,y+32)
{ 
    drag = true; 
	xoffset=mouse_x-x
	yoffset=mouse_y-y
} 
if mouse_check_button_released(mb_left) 
{ 
    drag = false; 
	xoffset=0
	yoffset=0
} 
if drag 
{ 
	
    x = mouse_x-xoffset; 
    y = mouse_y-yoffset; 
	xx=x
	yy=y
}

if mouse_check_button_pressed(mb_left) 
&& point_in_rectangle(mouse_x,mouse_y,x+width-32,y,x+width,y+32)
{
	script_execute(scr_deleteidwindow)
}
}

