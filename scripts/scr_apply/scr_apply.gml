ini_open("game_settings.ini");
ini_write_real("settings", "width", obj_resolutionslider.width);
ini_write_real("settings", "height", obj_resolutionslider.height);
ini_write_real("settings", "resolution", obj_resolutionslider.resolution)
ini_close();

game_restart()