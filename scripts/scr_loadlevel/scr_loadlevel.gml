global.loadname=get_open_filename(".sav",("Select your level"))
if file_exists(global.loadname)
   {
   	with (obj_saveable) instance_destroy()
	with (obj_info) instance_destroy()
	var _wrapper=LoadJSONFromFile(global.loadname)
	var _list = _wrapper[? "ROOT"]
	
	var leveleditorroom=room_add()
	room_set_persistent(leveleditorroom, false);
		room_set_background_colour(leveleditorroom, c_green, 1);
		room_instance_add(leveleditorroom,0,0,obj_loader)
		room_instance_add(leveleditorroom,0,0,obj_controller)
	
	for(var i=0;i<ds_list_size(_list);i++)
	{
		var _map = _list[| i]
		var _obj = _map[? "obj"]
		with (instance_create_layer(0,0,"instances",asset_get_index(_obj)))
		{
			x = _map[? "x"]
			y = _map[? "y"]
			if _obj="obj_info"{
			room_w = _map[? "room_w"]
			room_h = _map[? "room_h"]
			}
		}
		
	}
	show_debug_message("Game Loaded!")
		room_set_width(leveleditorroom, obj_info.room_w)
		room_set_height(leveleditorroom, obj_info.room_h);
		
		room_goto(leveleditorroom)
   }