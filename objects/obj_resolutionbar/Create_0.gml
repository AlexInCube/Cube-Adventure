/// @description Insert description here
// You can write your code in this editor
//randomize();//randomize the seed
depth=-3
image_xscale = 1//random_range(0.5, 1);//chose a random scale for slide bar
image_yscale = image_xscale;


//work out the top and bottom limits
rightLimit = x+(sprite_get_width(spr_volumebar)/2)-15;
leftLimit = x-(sprite_get_width(spr_volumebar)/2)+15;


//create the slider for this bar and assign it some values
a = instance_create_layer(x, y, "instances",obj_resolutionslider);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.barLength = sprite_width;
a.rightLimit = rightLimit;
a.leftLimit = leftLimit
ini_open("game_settings.ini")
obj_resolutionslider.resolution=ini_read_real("settings", "resolution", 0)
ini_close()
a.x = leftLimit + ((obj_resolutionslider.resolution)*(a.rightLimit-a.leftLimit)/16)