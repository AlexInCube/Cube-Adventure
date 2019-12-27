/// @description Insert description here
// You can write your code in this editor
script_execute(createscr)
/*
if autoopen=1
{
	// create menu items
    var yIncrement = sprite_get_height(spr_dropablemenu);
    var yy = y + yIncrement;
    for (var i = 0; i < ds_list_size(myList); i++)
    {
        var item = instance_create_layer(x, yy, "instances" ,obj_dropablebutton);
        item.txt = ds_list_find_value(myList, i);
        item.scr = scr
        yy += yIncrement;
    }
}