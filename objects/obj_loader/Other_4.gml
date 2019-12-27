/// @description Insert description here
// You can write your code in this editor

if(!file_exists(filename)){
	place=working_directory+"\Levels"
	filename = place + "\\"+"\level" + string(num) + ".sav";
	//show_message(filename)
	}

if (file_exists(filename))
{
	with (obj_info) instance_destroy()
	scr_loadingblocklist(filename)
}