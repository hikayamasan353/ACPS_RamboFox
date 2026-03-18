function scr_drift() {
	var xx,yy,ss,tt,rr,_r,_l,hh;
	if drive_speed>0
	if !keyboard_check(vk_up)
	{
		drive_speed-=drive_loss
	}
	if !keyboard_check(vk_left)
	{
		if left>0
		{
			left/=stearing_loss
		}
	}
	if !keyboard_check(vk_right)
	{
		if right>0
		{
			right/=stearing_loss
		}
	}

	if drive_speed<handbrake_cuttof_speed
	{
		if keyboard_check(vk_space)
		{
			drive_speed/=handbrake_divider
		}
	}
	else
	{
		if keyboard_check(vk_space)
		{
			drive_speed-=(drive_peddlespeed*drive_brakemultiplier)/handbrake_brake_speed
		}
	}
	if drive_speed<0
	{
		drive_speed=0
	}

	if left<0
	{
		left=0
	}
	if right<0
	{
		right=0
	}

	if left>stearing_max
	{
		left=stearing_max
	}
	if right>stearing_max
	{
		right=stearing_max
	}

	stearing_angle=(left/stearing_weight-right/stearing_weight)

	ss=scr_check(0,image_angle,direction)
	hh=scr_check(1,image_angle+180,direction)
	if abs(ss)<10
	if can_press
	{
		is_handbrake=0
	}
	if hh<10
	if can_press
	{
		is_handbrake=0
	}

	if ss>90 or ss<-90
	{
	ss=prev_ss
	}
	else
	{
		prev_ss=ss
	}

	drive_speed-=abs(ss/slip_camber)

	rr=abs(10-speed)


	tt=0
	if stearing_angle>0
	{
		tt=1
	}
	if stearing_angle<0
	{
		tt=-1
	}

	stearing_controllangle=stearing_angle

	if stearing_controllangle<0
	{
		stearing_controllangle=-min(speed*1.5,abs(stearing_controllangle))
	}

	if stearing_angle>0
	{
		stearing_controllangle=min(speed*1.5,abs(stearing_controllangle))
	}
	image_angle=scr_fix360(image_angle)

	drive_speed-=max(0,front_r+front_l)/500
	reverse_var-=max(0,front_r+front_l)/200
	if drive_speed<0
	{
		drive_speed=0
	}
	if reverse_var<0
	{
		reverse_var=0
	}

	stearing_controllangle-=min(speed,max(0,random(front_r)))
	stearing_controllangle+=min(speed,max(0,random(front_l)))

	image_angle+=min(drive_speed/2,max(0,back_l))
	image_angle-=min(drive_speed/2,max(0,back_r))
	image_angle-=spin_diff/spin_divider

	spin_diff/=1.5
	var rear_dmg;
	rear_dmg=max(0,(back_l+back_r))/150

	motion_add(direction,drive_speed/drive_grip)
	if reverse_switch=0
	{

	    image_angle+=stearing_controllangle
	    if is_handbrake=0
		{
			image_angle+=((ss/stearing_camber)/slip_stiffnes)
		}
		else
		{
			image_angle+=((ss/handbrake_camber)/slip_stiffnes)
		}

		
		if !on_dirt>.2
	    {
			friction=max(.000001,drive_stability-rear_dmg-is_handbrake*handbrake_friction_multiplier)
			motion_add(image_angle,max(.000001,drive_stability-rear_dmg-is_handbrake*handbrake_friction_multiplier))
	    }
	    else
		{
			friction=max(.000001,offroad_stability-is_handbrake*handbrake_friction_multiplier)
			motion_add(image_angle,max(.000001,offroad_stability-rear_dmg-is_handbrake*handbrake_friction_multiplier))
	    }
    
	    if speed>drive_speed
	    {
			speed=drive_speed
		}
	}

	if reverse_switch=1
	{
		if !is_handbrake=0
		{
			ss=scr_check(0,image_angle,direction)
			if ss>0
			{
				image_angle-=min(scr_check(1,image_angle,direction)/10,reverse_var*2)
			}
			if ss<0
			{
				image_angle+=min(scr_check(1,image_angle,direction)/10,reverse_var*2)
			}
		}

		image_angle-=stearing_controllangle*1.02

		if is_handbrake=0
		{
			motion_add(image_angle,-reverse_stability/reverse_grip)
			friction=reverse_stability
		}
		else
		{
			motion_add(image_angle,(-reverse_stability/reverse_grip)/10)
			friction=(reverse_stability)/10
		}

		temp_var=reverse_var
		if temp_var>reverse_topspeed
		{
			temp_var=reverse_topspeed
		}

		motion_add(image_angle,-reverse_peddlespeed)

		if speed>reverse_topspeed/1.02
		{
			speed=reverse_topspeed/1.02
		}

		if speed>reverse_var
		{
			speed=reverse_var
		}
	}
	if lf
	{
		image_angle+=min(drive_speed*2,random(50))
	}
	if lr
	{
		image_angle-=min(drive_speed*2,random(50))
	}


}
