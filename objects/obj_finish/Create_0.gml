/// @description Insert description here
// You can write your code in this editor
image_speed=0
state=0
if instance_exists(obj_controller1){
place=program_directory+"\Levels"
ini_open("game_settings.ini")
num=1+ini_read_real("progress","lvl",1)
ini_close()
filename = place + "\\"+"\level" + string(num) + ".sav";
}