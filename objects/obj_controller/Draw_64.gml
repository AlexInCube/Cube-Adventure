/// @description Insert description here
// You can write your code in this editor
if global.ifInEditorMode=true{
draw_sprite(spr_editorbuttons,0,view_w-32,0)//Test
draw_sprite(spr_editorbuttons,2,view_w-64,0)//Save
draw_sprite(spr_editorbuttons,3,view_w-96,0)//Open File
draw_sprite(spr_editorbuttons,4,view_w-128,0)//Exit
}
else
{
draw_sprite(spr_editorbuttons,1,view_w-32,0)//Stop
}
	