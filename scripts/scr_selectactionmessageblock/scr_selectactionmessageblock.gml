if txt="Delete"
{
	with (owner) {instance_destroy()}
	with (obj_dropablebutton) {instance_destroy()}
	with (obj_dropbutton) {instance_destroy()}
}

if txt="Change Message"
{
	if instance_exists(owner){
		global.tempowner=owner
	var window
	window=instance_create_layer((view_x+view_w/2)-200,(view_y+view_h/2)-100,"instances",obj_window)
	window.width=400
	window.height=200
	window.txt="Write your message"
	window.extendedwindow=1
	var deletescr=script_get_name(scr_deleteidwindow)
	window.deletescr=asset_get_index(deletescr)
	
	var textboxid=instance_create_layer(obj_window.x+10,obj_window.y+60,"instances",obj_textbox)
	textboxid.owner=window
	textboxid.message=owner.message
	textboxid.xx=10
	textboxid.yy=60
	textboxid.limit=999
	
	var applyid=instance_create_layer(obj_window.x+200,obj_window.y+130,"instances",obj_mainmenubutton)
	applyid.txt="Apply Text"
	var name=script_get_name(scr_applymessage)
	applyid.scr=asset_get_index(name)
	applyid.owner=window
	applyid.xx=window.width/2-sprite_get_width(spr_mainmenubutton)/2
	applyid.yy=100
	
	}
	
	instance_deactivate_object(obj_selectblock)
	with (obj_dropbutton) instance_destroy()
	with (obj_dropablebutton) instance_destroy()
}
	