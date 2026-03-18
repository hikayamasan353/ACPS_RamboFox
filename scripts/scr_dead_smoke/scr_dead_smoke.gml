
//Dead smoke logic
function scr_dead_smoke()
{

	if is_dead
	{
		if action_if_dice(5)
		{
			var obj,xx,yy,color;
			obj=instance_create(x-random(5)+random(5),y-random(5)+random(5),obj_smoke)
			obj.image_blend=c_dkgray
		}
	}
	
	if is_smoking
	{
		var obj,xx,yy,color;
		obj=instance_create(x-random(5)+random(5),y-random(5)+random(5),obj_smoke)
		obj.image_blend=c_dkgray
		obj.alarm[0]=150
	}

}