/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and !collision_point(mouse_x,mouse_y,id,0,0) and !collision_point(mouse_x,mouse_y,obj_dropablebutton,0,0) and txt="Close"{
if (instance_exists(obj_dropablebutton))
{
    with (obj_dropablebutton)
    {
        instance_destroy();
    }
	instance_destroy()
}
}

if mouse_check_button_pressed(mb_left) and collision_point(mouse_x,mouse_y,id,0,0) and txt="Close"{
if (instance_exists(obj_dropablebutton))
{
    with (obj_dropablebutton)
    {
        instance_destroy();
    }
	
	instance_destroy()
	
}
}

if mouse_check_button_pressed(mb_left) and !collision_point(mouse_x,mouse_y,id,0,0) and !collision_point(mouse_x,mouse_y,obj_dropablebutton,0,0){
if (instance_exists(obj_dropablebutton))
{
    with (obj_dropablebutton)
    {
        instance_destroy();
    }
	
}
}

if mouse_check_button_pressed(mb_left) and collision_point(mouse_x,mouse_y,id,0,0){
if (instance_exists(obj_dropablebutton))
{
    with (obj_dropablebutton)
    {
        instance_destroy();
    }
}
else
{   
    // create menu items
    var yIncrement = sprite_get_height(spr_dropablemenu);
    var yy = y + yIncrement;
    for (var i = 0; i < ds_list_size(myList); i++)
    {
        var item = instance_create_layer(x, yy, "instances" ,obj_dropablebutton);
        item.txt = ds_list_find_value(myList, i);
        item.scr = scr
		item.owner = owner
        yy += yIncrement;
    }
}
}

