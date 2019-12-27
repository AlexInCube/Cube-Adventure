/// @description Insert description here
// You can write your code in this editor
if openwindow=0 
{openwindow=1 instance_create_layer(view_x+0,view_y+0,"instances",obj_collisionmaskformenu)
}else{openwindow=0 with(obj_collisionmaskformenu) instance_destroy()}

var yy=32
var xx=32
var pos=0
for (var i = 0; i < ds_list_size(blocklist); i++) {
    
	var sprite = object_get_sprite(blocklist[| i]);
    var index = object_get_name(blocklist[| i]);
	
   
    if (pos mod 5) == 0
    {
	   pos=0
	   yy+=32
	   xx=32+pos*100
	}
	else
	{
		xx=32+pos*100
		
	}
	pos+=1 
   
   var obj = instance_create_layer(xx, yy,"instances",obj_selectblockbutton)
   
   obj.block = index
   obj.sprite_index = sprite
   
	
   
}