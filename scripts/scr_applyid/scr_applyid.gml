if instance_exists(global.tempowner){
	global.tempowner.connect_id = obj_textbox.message
}

	instance_activate_object(obj_selectblock)
	with (obj_window) instance_destroy()
	with (obj_textbox) instance_destroy()
	with (obj_mainmenubutton) instance_destroy()