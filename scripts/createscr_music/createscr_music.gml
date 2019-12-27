var obj = argument0
ini_open("game_settings.ini");
global.musicon=ini_read_real("settings","music_on",1)
ini_close()
if global.musicon=1{obj.image_index=1}
