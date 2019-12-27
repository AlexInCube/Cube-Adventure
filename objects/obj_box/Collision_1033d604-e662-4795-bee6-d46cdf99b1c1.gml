/// @description Insert description here
// You can write your code in this editor
if obj_player.direction=90 and place_free(x,y-32){
y=y-32
}
if obj_player.direction=270 and place_free(x,y+32){
y=y+32
}
if obj_player.direction=180 and place_free(x-32,y){
x=x-32
}
if obj_player.direction=0 and place_free(x+32,y){
x=x+32
}