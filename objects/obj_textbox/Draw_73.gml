/// @description Insert description here
// You can write your code in this editor
if instance_exists(owner){
x=owner.x+xx
y=owner.y+yy
}

draw_self();
draw_set_font(fnt_digits)
draw_set_valign(fa_center);
draw_set_halign(fa_left);
draw_set_colour(c_black)
draw_text(x+5, y+18, string(message) + cursor);

