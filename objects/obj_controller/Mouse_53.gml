/// @description Insert description here
// You can write your code in this editor
if point_in_rectangle(mouse_x,mouse_y,view_x+view_w-32,view_y,view_x+view_w,view_y+32){//TEST OR STOP (AUTOSAVE SAVING AFTER TEST)
if global.ifInEditorMode=0
{
	global.ifInEditorMode=1
	instance_create_layer(0,0,"instances",obj_selectblock)
	if (file_exists("autosave.sav"))
	{
		scr_loadingblocklist("autosave.sav")
	}
}
else
{
	scr_savingblocklist("autosave.sav")
	show_debug_message("Game Saved!")
	global.ifInEditorMode=0
	with (obj_selectblock)	instance_destroy()
	if instance_exists(obj_parentactionbutton){with (obj_parentactionbutton)	instance_destroy()}}
}

if point_in_rectangle(mouse_x,mouse_y,view_x+view_w-64,view_y,view_x+view_w-32,view_y+32) and global.ifInEditorMode=1{//SAVE
var place=environment_get_variable("LOCALAPPDATA") + "\\CubeAdventureRemake"
global.savename=get_save_filename_ext(".sav","SAVE WORK ONLY IN %LOCALAPPDATA%!!!",place,"SAVE WORK ONLY IN %LOCALAPPDATA%!!!")
if global.savename != ""
   {
   scr_savingblocklist(global.savename)
   }
}

if point_in_rectangle(mouse_x,mouse_y,view_x+view_w-96,view_y,view_x+view_w-64,view_y+32) and global.ifInEditorMode=1{//OPEN FILE
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

   
}

if point_in_rectangle(mouse_x,mouse_y,view_x+view_w-128,view_y,view_x+view_w-96,view_y+32) and global.ifInEditorMode=1{//EXIT
room_goto(global.mainmenuroom)
}