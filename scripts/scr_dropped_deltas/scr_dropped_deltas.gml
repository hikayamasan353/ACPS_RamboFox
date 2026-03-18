function scr_dropped_deltas()
{
	
	//Dropped deltas

	var oo;
	//is_dropped_bl=0
	//is_dropped_br=0
	//is_dropped_fl=0
	//is_dropped_fr=0
	if back_l>6
	{
		if is_dropped_bl=0
		{
			oo=instance_create(x,y,obj_dropped_bl)
			oo.direction=direction
			oo.image_angle=image_angle
			oo.speed=speed
			is_dropped_bl=1
		}
	}

	if back_r>6
		if is_dropped_br=0
		{
		oo=instance_create(x,y,obj_dropped_br)
		oo.direction=direction
		oo.image_angle=image_angle
		oo.speed=speed
		is_dropped_br=1
		}

	if front_l>6
		if is_dropped_fl=0
		{
			oo=instance_create(x,y,obj_dropped_fl)
			oo.direction=direction
			oo.image_angle=image_angle
			oo.speed=speed
			is_dropped_fl=1
		}

	if front_r>6
		if is_dropped_fr=0
		{
			oo=instance_create(x,y,obj_dropped_fr)
			oo.direction=direction
			oo.image_angle=image_angle
			oo.speed=speed
			is_dropped_fr=1
		}

}