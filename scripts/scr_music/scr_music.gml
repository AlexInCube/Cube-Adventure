if image_index=1{image_index=0;global.music_on=0
ini_open("game_settings.ini");
ini_write_real("settings", "music_on",global.music_on)
ini_close()
audio_stop_all()
}
else{image_index=1;global.music_on=1
ini_open("game_settings.ini");
ini_write_real("settings", "music_on",global.music_on)
ini_close()
audio_play_sound(snd_music,1,false)
audio_sound_gain(snd_music,global.musicvolume,0)}