var obj = argument0
ini_open("game_settings.ini");
obj_mainmenu.intro=ini_read_real("settings", "intro", 1)
ini_close()
if obj_mainmenu.intro=1{obj.image_index=1}