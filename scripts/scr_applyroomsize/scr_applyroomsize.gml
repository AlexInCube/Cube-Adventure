var leveleditorroom
leveleditorroom=room_add()
var w=32*real(global.textboxwidth.message)
var h=32*real(global.textboxheight.message)


room_set_width(leveleditorroom, w)
room_set_height(leveleditorroom, h);
room_set_persistent(leveleditorroom, false);
room_set_background_colour(leveleditorroom, c_green, 1);
room_instance_add(leveleditorroom,0,0,obj_controller)
room_goto(leveleditorroom)
