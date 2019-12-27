/// @description Insert description here
// You can write your code in this editor
if global.ifInEditorMode=0 and state=1 and instance_exists(obj_controller){
show_message("Level done!")}
else if global.ifInEditorMode=0 and state=1 and instance_exists(obj_controller1)
{

ini_open("game_settings.ini");
ini_write_real("progress", "lvl", num);
ini_close()



if(!file_exists(filename)){
	place=working_directory+"\Levels"
	filename = place + "\\"+"\level" + string(num) + ".sav";
	//show_message(filename)
	}
	if(!file_exists(filename)){
	show_message("You complete all levels in this version!");game_end()}

if(file_exists(filename))
{
	with (obj_saveable) instance_destroy()
	
	var _wrapper=LoadJSONFromFile(filename)
	var _list = _wrapper[? "ROOT"]
	
	var leveleditorroom=room_add()
	room_set_persistent(leveleditorroom, false);
		room_set_background_colour(leveleditorroom, c_green, 1);
		room_instance_add(leveleditorroom,0,0,obj_loader)
		room_instance_add(leveleditorroom,0,0,obj_controller1)
	
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
	
		room_set_width(leveleditorroom, obj_info.room_w)
		room_set_height(leveleditorroom, obj_info.room_h);
		room_goto(leveleditorroom)
}
}

