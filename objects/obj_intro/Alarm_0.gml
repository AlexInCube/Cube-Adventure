/// @description Insert description here
// You can write your code in this editor
global.mainmenuroom=room_add()
room_set_width(global.mainmenuroom, width);
room_set_height(global.mainmenuroom, height);
room_set_persistent(global.mainmenuroom, false);
room_instance_add(global.mainmenuroom,0,0,obj_mainmenu)
surface_resize(application_surface, width, height);
display_set_gui_size(width, height)
window_set_size(width,height)



room_goto(global.mainmenuroom)