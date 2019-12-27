/// @description Insert description here
// You can write your code in this editor
ini_open("game_settings.ini");
global.musicvolume=ini_read_real("settings","music_volume",0.5)
global.musicon=ini_read_real("settings","music_on",1)
ini_close()

if global.musicon=1
{
audio_play_sound(snd_music,1,false)
audio_sound_gain(snd_music,global.musicvolume,0)
}


ini_open("game_settings.ini");
width=ini_read_real("settings", "width", 640);
height=ini_read_real("settings", "height", 480);
fullscreen=ini_read_real("settings", "fullscreen", 0);
ini_close()
surface_resize(application_surface, width, height);
display_set_gui_size(width, height)
window_set_size(width,height)



var intro=room_add()
room_set_width(intro, width);
room_set_height(intro, height);
room_set_persistent(intro, false);
room_instance_add(intro,0,0,obj_intro)
room_set_background_color(intro, c_black, 1)


if fullscreen=1{window_set_fullscreen(true)}

room_goto(intro)




/*if global.music_is_playing=1
{
audio_play_sound(snd_music,1,1)
audio_sound_gain(snd_music,global.music,0)
}
