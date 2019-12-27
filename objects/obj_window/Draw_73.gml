

draw_set_color(c_white)
draw_rectangle(x,y,x+width,y+height,false)
draw_set_color(c_blue)
draw_rectangle(x,y,x+width,y+32,false)
draw_set_color(c_white)
draw_rectangle(x,y,x+width,y+height,true)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text(x+(width/2),y+45,+string(txt))

if extendedwindow=1
{
draw_sprite(spr_editorbuttons,6,x+width-32,y+1)
}



