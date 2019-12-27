/// @description Insert description here
// You can write your code in this editor
//Resolution Initialize
window_center()
ini_open("game_settings.ini");
width=ini_read_real("settings", "width", 640);
height=ini_read_real("settings", "height", 480);
ini_close()

var xwidth=room_width-room_width+40

buttons[0]=instance_create_layer(xwidth,(room_height/2)-(sprite_get_height(spr_mainmenubutton)*2),"instances",obj_mainmenubutton)
buttons[0].txt="Select Level"
var name = script_get_name(scr_levelselect)
buttons[0].scr=asset_get_index(name)

buttons[1]=instance_create_layer(xwidth,(room_height/2)-(sprite_get_height(spr_mainmenubutton)*1),"instances",obj_mainmenubutton)
buttons[1].txt="Settings"
var name = script_get_name(scr_settings)
buttons[1].scr=asset_get_index(name)

buttons[2]=instance_create_layer(xwidth,(room_height/2),"instances",obj_mainmenubutton)
buttons[2].txt="Level Editor"
var name = script_get_name(scr_leveleditor)
buttons[2].scr=asset_get_index(name)

buttons[3]=instance_create_layer(xwidth,(room_height/2)+(sprite_get_height(spr_mainmenubutton)*1),"instances",obj_mainmenubutton)
buttons[3].txt="Info"
var name = script_get_name(scr_info)
buttons[3].scr=asset_get_index(name)

buttons[4]=instance_create_layer(xwidth,(room_height/2)+(sprite_get_height(spr_mainmenubutton)*2),"instances",obj_mainmenubutton)
buttons[4].txt="Exit"
var name = script_get_name(scr_exit)
buttons[4].scr=asset_get_index(name)