if txt="Delete"
{
	with (owner) {instance_destroy()}
	with (obj_dropablebutton) {instance_destroy()}
	with (obj_dropbutton) {instance_destroy()}
}

if txt="Change State"
{
	if instance_exists(owner){
	if owner.state=0{owner.state=1}else{owner.state=0}
	}
}
	