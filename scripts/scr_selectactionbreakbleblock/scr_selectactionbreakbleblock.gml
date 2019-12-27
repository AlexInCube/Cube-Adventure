if txt="Delete"
{
	with (owner) {instance_destroy()}
	with (obj_dropablebutton) {instance_destroy()}
	with (obj_dropbutton) {instance_destroy()}
}

if txt="Change State"
{
	if instance_exists(owner){
	owner.state+=1
	if owner.state>4{owner.state=0}
	}
}
	