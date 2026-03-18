
if !drive_speed=0
	if reverse_switch=0
	{
		do_skids()
	}
	
	
if !reverse_var=0
	if !is_handbrake=0
	{
		do_skids()
	}

if room=room_drift_track
	if reverse_switch=0
		if instance_number(obj_points)=0
		{
			if abs(scr_check(0,image_angle,direction))/50>1
			{
			instance_create(0,0,obj_points)
			}
		}
