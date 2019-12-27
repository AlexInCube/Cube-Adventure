/// @description Insert description here
// You can write your code in this editor

if dragging=true {
    view_x = view_x + drag_x - mouse_x
    view_y = view_y + drag_y - mouse_y
}

if instance_exists(obj_selectblock){
if point_in_rectangle(mouse_x,mouse_y,view_x+view_w-96,view_y,view_x+view_w,view_y+32){obj_selectblock.allow=false}

}