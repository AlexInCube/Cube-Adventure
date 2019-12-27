if window_get_fullscreen(){
window_set_fullscreen(false)
ini_open("game_settings.ini");
var fullscreen=window_get_fullscreen()
ini_write_real("settings", "fullscreen", fullscreen);
ini_close()
image_index=0
}
else
{window_set_fullscreen(true)
ini_open("game_settings.ini");
var fullscreen=window_get_fullscreen()
ini_write_real("settings", "fullscreen", fullscreen);
ini_close()
image_index=1
}