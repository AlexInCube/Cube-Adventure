if txt="Delete"
{
	with (owner) {instance_destroy()}
	with (obj_dropablebutton) {instance_destroy()}
	with (obj_dropbutton) {instance_destroy()}
}

if txt="Laser ON/OFF"
{
	if instance_exists(owner){
	if owner.laseron=true{owner.laseron=false}else{owner.laseron=true}
	}
}

if txt="Rotate"
{
	if instance_exists(owner){
	owner.image_index+=1
	owner.length=0
	if owner.image_index>owner.image_number{image_index=0}}
}

if txt="Change ID"
{
	if instance_exists(owner){
		global.tempowner=owner
	var window
	window=instance_create_layer((view_x+view_w/2)-200,(view_y+view_h/2)-100,"instances",obj_window)
	window.width=400
	window.height=200
	window.txt="Write object ID Current ID:"+string(owner.connect_id)
	window.extendedwindow=1
	var deletescr=script_get_name(scr_deleteidwindow)
	window.deletescr=asset_get_index(deletescr)
	
	var textboxid=instance_create_layer(obj_window.x+100-sprite_get_width(spr_textbox),obj_window.y+60,"instances",obj_textbox)
	textboxid.owner=window
	textboxid.message=owner.connect_id
	textboxid.xx=window.width/2-sprite_get_width(spr_textbox)/2
	textboxid.yy=60
	
	var applyid=instance_create_layer(obj_window.x+200,obj_window.y+130,"instances",obj_mainmenubutton)
	applyid.txt="Apply ID"
	var name=script_get_name(scr_applyid)
	applyid.scr=asset_get_index(name)
	applyid.owner=window
	applyid.xx=window.width/2-sprite_get_width(spr_mainmenubutton)/2
	applyid.yy=100
	
	}
	
	instance_deactivate_object(obj_selectblock)
	with (obj_dropbutton) instance_destroy()
	with (obj_dropablebutton) instance_destroy()
}
	