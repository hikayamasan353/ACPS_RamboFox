
//Main things!!!
var var_speed,var_direction;//,xx,yy; 
var_speed=(drive_speed*view_speed_multiplier-reverse_var*view_speed_multiplier)/size_scale
var_direction=image_angle//image_angle




//Brake lights alpha change
scr_brakelights_alphachange()

/////////////////////////////////////////////////

//////////////////////////////
// D R I V I N G  L O G I C //
//////////////////////////////

//Throttle
if(keyboard_check(vk_up))
{
	//Reverse or forward?
	if !reverse_switch //If forward
	{
		if drive_speed<drive_topspeed
			//Accelerate
			drive_speed+=drive_peddlespeed
	}

	else //If reverse
	{
		if reverse_var>0
			//Brake while reversing
			reverse_var-=reverse_peddlespeed*reverse_brakemultiplier
	}	
}
if(keyboard_check_pressed(vk_up))
{
	if !is_handbrake=0
	{
		if reverse_switch
		{
			reverse_switch=0
			drive_speed=reverse_var
			reverse_var=0
		}
	}

}

//Brake/Reverse
if(keyboard_check(vk_down))
{
	
	if is_reverse=0
	{
		is_reverse=1
		alarm[11]=1
	}

	
	//If forward
	if drive_speed>0
	{
		drive_speed-=drive_peddlespeed*drive_brakemultiplier
	}
	
	//If reverse
	if reverse_switch=1
	{
		//Accelerate backwards
		if reverse_var<reverse_topspeed
		{
			reverse_var+=reverse_peddlespeed
		}
	}

}
if(keyboard_check_pressed(vk_down))
{
	//Switch to reverse
	if drive_speed = 0
	{
		reverse_switch=1
	}
}

//Steering

//Turn left
if(keyboard_check(vk_left))
{
	if left<stearing_max
	{
		left+=stearing_response
		right-=stearing_response/stearing_camber
	}
}

//Turn right
if(keyboard_check(vk_right))
{
	if right<stearing_max
	{
		right+=stearing_response
		left-=stearing_response/stearing_camber
	}

}

//Handbrake
if(keyboard_check(vk_control))
{
	is_handbrake = handbrake_force*size_scale/5;
	can_press = 0;
	alarm[3]=10;
}
if(keyboard_check_pressed(vk_control))
{
	if handbrake_flip_do=1
		if reverse_switch=0
		{
			ss=scr_check(0,image_angle,direction)
			spin_diff=ss/handbrake_flip_response
			spin_divider=handbrake_dampening
		}
}






////////////////////////////////////////////////

//Spin
if spin_divider>1
{
	spin_divider-=handbrake_loss
}

if spin_divider<1
{
	spin_divider=1
}



if !keyboard_check(vk_down)
{
	if reverse_var>0
	{
		reverse_var-=reverse_loss
	}
}


//Limit reverse speed
if reverse_var>reverse_topspeed
{
	reverse_var=reverse_topspeed
}

if reverse_var<.1
{
	if !keyboard_check(vk_down)
	{
		reverse_switch=0
	}
}

/////////////////////////////////////////


//Taillights red/white

//If forward
if reverse_switch=0
{
	light_color=c_red
	if keyboard_check(vk_down)
		light_color=c_red
	light_alpha=0
}
else //If reverse
{
	light_color=c_white;
	if keyboard_check(vk_up)
		light_color=c_red;
	light_alpha=.5;
}

//This sounds interesting - hikayamasan353
scr_drift()
//drift_2()

if front_l>1
{
	if sound_left=0
	{
		sound_left=1
		sound_play(shatter_light)
	}
}


if front_r>1
{
	if sound_right=0
	{
		sound_right=1
		sound_play(shatter_light)
	}
}


//View logic?????


__view_set( e__VW.XView, 0, (__view_get( e__VW.XView, 0 )*5+(lengthdir_x(var_speed,var_direction)-(__view_get( e__VW.WView, 0 )/2)))/6 );
__view_set( e__VW.YView, 0, (__view_get( e__VW.YView, 0 )*5+(-lengthdir_y(var_speed,var_direction)-(__view_get( e__VW.HView, 0 )/2)))/6 );
//view_angle[0]=-image_angle+90

///////////////////////////////////////////////////////

//Dropped deltas
scr_dropped_deltas()
scr_dead_smoke()

///////////////////////////////////////////////////////////////	


