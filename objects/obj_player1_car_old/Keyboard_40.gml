
if is_reverse=0
{
	is_reverse=1
	alarm[11]=1
}


if drive_speed>0
{
	drive_speed-=drive_peddlespeed*drive_brakemultiplier
}

if reverse_switch=1
{
	if reverse_var<reverse_topspeed
	{
		reverse_var+=reverse_peddlespeed
	}
}

