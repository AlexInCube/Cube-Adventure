scr_removeelements()
	
	if !instance_exists(global.apply){
	
	var xxwidthleft
	xxwidthleft=room_width-70 
	instance_create_layer(xxwidthleft,room_height-room_height+250,"instances",obj_volumebar)
	instance_create_layer(xxwidthleft,room_height-room_height+200,"instances",obj_resolutionbar)
	
	
	global.apply=instance_create_layer(room_width/2,room_height-50,"instances",obj_mainmenubutton)
	global.apply.txt="Apply (Game Restart)"
	var name=script_get_name(scr_apply)
	global.apply.scr=asset_get_index(name)
	
	
	var xxwidthright
	xxwidthright=280
	
	var musiccheckbox 
	musiccheckbox=instance_create_layer(xxwidthright,room_height-room_height+30,"instances",obj_checkbox)
	musiccheckbox.txt="Music"
	var createscr=script_get_name(createscr_music(musiccheckbox))
	musiccheckbox.createscr=asset_get_index(createscr)
	var name=script_get_name(scr_music)
	musiccheckbox.scr=asset_get_index(name)
	
	var introcheckbox 
	introcheckbox=instance_create_layer(xxwidthright,room_height-room_height+70,"instances",obj_checkbox)
	introcheckbox.txt="Intro"
	var createscr=script_get_name(createscr_intro(introcheckbox))
	introcheckbox.createscr=asset_get_index(createscr)
	var name=script_get_name(scr_intro)
	introcheckbox.scr=asset_get_index(name)
	
	var fullscreencheckbox 
	fullscreencheckbox=instance_create_layer(xxwidthright,room_height-room_height+110,"instances",obj_checkbox)
	fullscreencheckbox.txt="Fullscreen"
	var createscr=script_get_name(createscr_fullscreen(fullscreencheckbox))
	fullscreencheckbox.createscr=asset_get_index(createscr)
	var name=script_get_name(scr_fullscreen)
	fullscreencheckbox.scr=asset_get_index(name)
	}
	
	