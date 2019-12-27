/// @description Insert description here
// You can write your code in this editor
ini_open("game_settings.ini");
width=ini_read_real("settings", "width", 640);
height=ini_read_real("settings", "height", 480);
fullscreen=ini_read_real("settings", "fullscreen", 0);
intro=ini_read_real("settings", "intro", 1);
ini_close()
present=0
alarm[1]=80
if intro=1{
alarm[0]=room_speed*8
}else{alarm[0]=1}
global.mainmenuroom=""