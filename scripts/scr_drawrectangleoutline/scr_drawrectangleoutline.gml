draw_self()
/*draw_set_colour(c_black)
if !place_meeting(x,y-1,obj_wall)and!place_meeting(x,y-1,obj_invisibleblock){
draw_line_width(x-2,y-1,x+32,y-1,2)//Top Line
}

if !place_meeting(x-1,y,obj_wall)and!place_meeting(x,y-1,obj_invisibleblock){
draw_line_width(x-1,y-1,x-1,y+33,2)//Left Line
}

if !place_meeting(x+1,y,obj_wall)and!place_meeting(x,y-1,obj_invisibleblock){
draw_line_width(x+31,y,x+31,y+32,2)//Right Line
}

if !place_meeting(x,y+1,obj_wall)and !place_meeting(x,y+1,obj_invisibleblock){
draw_line_width(x,y+32,x+32,y+32,2)//Bottom Line
}
draw_set_colour(c_white)