/// @description Insert description here
// You can write your code in this editor
var color=c_orange
draw_rectangle_color(x,y,x+32,y+32,color,color,color,color,false)
//if global.ifInEditorMode=1{
	draw_self()
draw_text(x+10,y+5,+string(connect_id))
//}