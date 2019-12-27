scr_removeelements()

if !instance_exists(obj_selectlevel){
var xx
var yy
xx=300
yy=5


for (var i = 0; i < 10; i += 1)
{
instance_create_layer(xx,yy,"instances",obj_selectlevel)
xx=xx+50; if xx>room_width-70{yy+=50;xx=300}
}

}
