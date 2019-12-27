/// @description Insert description here
// You can write your code in this editor
if global.ifInEditorMode=1 and !instance_exists(obj_dropbutton) and !instance_exists(obj_dropablebutton){
var dropmenu
	dropmenu=instance_create_layer(mouse_x,mouse_y,"instances",obj_dropbutton)
	dropmenu.txt="Close"
	var myList = ds_list_create();
	ds_list_add(myList, "Change ID", "Delete");
	dropmenu.myList = myList
	var name=script_get_name(scr_selectactionbutton)
	dropmenu.scr=asset_get_index(name)
	dropmenu.autoopen=1
	dropmenu.owner=id
}