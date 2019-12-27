/// @description Insert description here
// You can write your code in this editor
draw_self()
var color=c_black
draw_set_font(fnt_main)
draw_text_color(x+40,y+string_height(txt)/2,string(txt),color,color,color,color,1)

if collision_point(mouse_x,mouse_y,id,0,0){
draw_set_color(c_blue)
draw_rectangle(x-2,y-2,x+34,y+34,true)
}