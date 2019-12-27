scr_removeelements()

	var window
	window=instance_create_layer(room_width/2,room_height/2-220,"instances",obj_window)
	window.width=300
	window.height=200
	window.txt="Write width and height"
	window.extendedwindow=0
	
	var dropmenusize
	dropmenusize=instance_create_layer(obj_window.x+120,obj_window.y+200-sprite_get_height(spr_dropablemenu),"instances",obj_dropbutton)
	dropmenusize.txt="Select Size"
	var myList = ds_list_create();
	ds_list_add(myList, "20x15 (Default)", "30x20 (Medium)", "40x30 (Large)", "50x40 (Huge)");
	dropmenusize.myList = myList
	var name=script_get_name(scr_selectsize)
	dropmenusize.scr=asset_get_index(name)
	
	global.loadlevel=instance_create_layer(obj_window.x,obj_window.y+156,"instances",obj_mainmenubutton)
	global.loadlevel.txt="Load Level"
	global.loadlevel.image_xscale=0.53
	var name=script_get_name(scr_loadlevel)
	global.loadlevel.scr=asset_get_index(name)
 
	global.textboxwidth=instance_create_layer(obj_window.x+50,obj_window.y+60,"instances",obj_textbox)
	global.textboxheight=instance_create_layer(obj_window.x+50,obj_window.y+100,"instances",obj_textbox)

	global.applyroomsize=instance_create_layer(room_width/2,room_height-50,"instances",obj_mainmenubutton)
	global.applyroomsize.txt="New Level"
	var name=script_get_name(scr_applyroomsize)
	global.applyroomsize.scr=asset_get_index(name)
	