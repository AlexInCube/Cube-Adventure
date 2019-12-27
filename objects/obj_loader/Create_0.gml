/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_controller){
filename=global.loadname
}else if instance_exists(obj_controller1){
place=program_directory+"\Levels"
ini_open("game_settings.ini")
num=ini_read_real("progress","lvl",1)
ini_close()
filename = place + "\\"+"\level" + string(num) + ".sav";
}