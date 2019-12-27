/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_resolutionbar){instance_destroy()}

switch(resolution)
	{
	case 0:
		width=640;height=480;break
	case 1:
		width=800;height=600;break
	case 2:
		width=1024;height=600;break
	case 3:
		width=1280;height=720;break
	case 4:
		width=1280;height=768;break
	case 5:
		width=1200;height=800;break
	case 6:
		width=1280;height=1024;break
	case 7:
		width=1400;height=1050;break
	case 8:
		width=1440;height=900;break
	case 9:
		width=1440;height=960;break
	case 10:
		width=1600;height=900;break
	case 11:
		width=1600;height=1200;break
	case 12:
		width=1680;height=1050;break
	case 13:
		width=1920;height=1080;break
	case 14:
		width=2048;height=1536;break
	case 15:
		width=2560;height=1060;break
	}

if (!mouse_check_button(mb_left))
{
    grab = false;//slider is not clicked therefore not grabbed
}

if (grab = false)//if this object is not being grabbed
{
    exit;
}
else//otherwise change its coordinates
{
   if ((mouse_x + xx) > leftLimit) && ((mouse_x + xx < rightLimit))
    {
        x = mouse_x + xx;
    }
    else if ((mouse_x + xx) < leftLimit)//set at left limit if user wants to slide it too far left
    {
        x = leftLimit;
    }
    else if ((mouse_x + xx) > rightLimit)//set at right limit if user wants to slide it too far right
    {
        x = rightLimit;
    }

}

//work out the percentage value
percentage = round(((x-leftLimit)/(rightLimit-leftLimit))*15);


resolution = percentage;

