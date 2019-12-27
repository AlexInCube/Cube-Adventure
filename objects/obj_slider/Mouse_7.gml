/// @description Insert description here
// You can write your code in this editor
grab = false;//this object is not being grabbed
ini_open("game_settings.ini")
ini_write_real("settings", "music_volume", global.musicvolume)
ini_close()
/*ini_open("game_settings.ini")
percentage = ini_write_real("settings", "music_volume", global.musicvolume)
ini_close()
