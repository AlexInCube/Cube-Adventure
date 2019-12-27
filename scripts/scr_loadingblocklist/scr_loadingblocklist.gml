var _loadfile = argument0

var _wrapper=LoadJSONFromFile(_loadfile)
	with (obj_saveable) instance_destroy()
	var _list = _wrapper[? "ROOT"]
	for(var i=0;i<ds_list_size(_list);i++)
	{
		var _map = _list[| i]
		var _obj = _map[? "obj"]
		var number_of_blocks=+1
		with (instance_create_layer(0,0,"instances",asset_get_index(_obj)))
		{
			x = _map[? "x"]
			y = _map[? "y"]
			if _obj="obj_info"{
			room_w = _map[? "room_w"]
			room_h = _map[? "room_h"]
			}
			if _obj="obj_laserbox"{
			connect_id = _map[? "connect_id"]
			image_index = _map[? "image_index"]
			laseron = _map[? "laseron"]
			}
			if _obj="obj_button"{
			connect_id = _map[? "connect_id"]
			}
			if _obj="obj_finish"{
			state = _map[? "state"]
			}
			if _obj="obj_breakbleblock"{
			state = _map[? "state"]
			}
			if _obj="obj_messageblock"{
			message = _map[? "message"]
			}
			if _obj="obj_invisibleblock"{
			connect_id = _map[? "connect_id"]
			}
			if _obj="obj_appearingblock"{
			connect_id = _map[? "connect_id"]
			}
			if _obj="obj_teleport1"{
			connect_id = _map[? "connect_id"]
			}
			if _obj="obj_teleport2"{
			connect_id = _map[? "connect_id"]
			}
		}
	}