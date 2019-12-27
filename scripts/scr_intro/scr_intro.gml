if image_index=1{image_index=0;obj_mainmenu.intro=0
ini_open("game_settings.ini");
ini_write_real("settings", "intro",obj_mainmenu.intro)
ini_close()
}
else{image_index=1;obj_mainmenu.intro=1
ini_open("game_settings.ini");
ini_write_real("settings", "intro",obj_mainmenu.intro)
ini_close()
}
