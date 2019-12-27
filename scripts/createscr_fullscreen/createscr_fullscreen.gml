var obj = argument0
ini_open("game_settings.ini");
var fullscreen=ini_read_real("settings", "fullscreen", 0)
ini_close()
if fullscreen=1{obj.image_index=1}