var _savefile = argument0

var _root_list = ds_list_create();

with(obj_saveable)
{
	var _map = ds_map_create()
	ds_list_add(_root_list,_map)
	ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1)
	
	var _obj=object_get_name(object_index)
	ds_map_add(_map,"obj",_obj)
	ds_map_add(_map,"y",y)
	ds_map_add(_map,"x",x)
	if _obj="obj_info"{
	ds_map_add(_map,"room_w",room_w)
	ds_map_add(_map,"room_h",room_h)
	}
	if _obj="obj_laserbox"{
	ds_map_add(_map,"connect_id",connect_id)
	ds_map_add(_map,"image_index",image_index)
	ds_map_add(_map,"laseron",laseron)
	}
	if _obj="obj_button"{
	ds_map_add(_map,"connect_id",connect_id)
	}
	if _obj="obj_finish"{
	ds_map_add(_map,"state",state)
	}
	if _obj="obj_breakbleblock"{
	ds_map_add(_map,"state",state)
	}
	if _obj="obj_messageblock"{
	ds_map_add(_map,"message",message)
	}
	if _obj="obj_invisibleblock"{
	ds_map_add(_map,"connect_id",connect_id)
	}
	if _obj="obj_appearingblock"{
	ds_map_add(_map,"connect_id",connect_id)
	}
	if _obj="obj_teleport1"{
	ds_map_add(_map,"connect_id",connect_id)
	}
	if _obj="obj_teleport2"{
	ds_map_add(_map,"connect_id",connect_id)
	}
	
}

var _wrapper = ds_map_create()
ds_map_add_list(_wrapper,"ROOT",_root_list)

var _string = json_encode(_wrapper)

SaveStringToFile(_savefile,_string)
ds_map_destroy(_wrapper)