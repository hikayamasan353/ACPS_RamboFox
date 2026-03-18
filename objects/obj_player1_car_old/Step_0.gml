var is_changed=0;



//Brake lights alpha change
if keyboard_check(vk_down)
{
	if reverse_switch=0
	{
		is_changed=1
		if brake_alpha<1
			brake_alpha+=.25
	}	
}


if keyboard_check(vk_up)
{
	if reverse_switch=1
	{
		is_changed=1
		if brake_alpha<1
			brake_alpha+=.25
	}
}


if is_changed=0
{
	if brake_alpha>0
		brake_alpha-=.25
}
if spin_divider>1
{
	spin_divider-=handbrake_loss
}

if spin_divider<1
{
	spin_divider=1
}

if keyboard_check(vk_down)=0
{
	if reverse_var>0
	{
		reverse_var-=reverse_loss
	}
}


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

if reverse_switch=0
{
	light_color=c_red
	light_alpha=0
}
else
{
	light_color=c_white
	light_alpha=.5
}



if reverse_switch=1
{
	light_color=c_white;
	if keyboard_check(vk_up)
		light_color=c_red;
	light_alpha=.5;
}

if reverse_switch=0
{
	light_color=c_red
	if keyboard_check(vk_down)
		{light_color=c_red}
	light_alpha=0
}

//This sounds interesting - hikayamasan353
scr_drift()

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
var var_speed,var_direction,xx,yy;
var_speed=(drive_speed*view_speed_multiplier-reverse_var*view_speed_multiplier)/size_scale

/*
Unnecessary code detected - hikayamasan353

if reverse_switch=0
{
//view_wview=(1+var_speed/view_devider+view_size)*view_multiplier
//view_hview=(1+var_speed/view_devider+view_size)*view_multiplier
}
else
{
//view_wview=(1+-var_speed/view_devider+view_size)*view_multiplier
//view_hview=(1+-var_speed/view_devider+view_size)*view_multiplier
}
*/

var_direction=image_angle//image_angle
xx=x+var_speed*cos(degtorad(var_direction))
yy=y-var_speed*sin(degtorad(var_direction))
__view_set( e__VW.XView, 0, (__view_get( e__VW.XView, 0 )*5+(xx-(__view_get( e__VW.WView, 0 )/2)))/6 );
__view_set( e__VW.YView, 0, (__view_get( e__VW.YView, 0 )*5+(yy-(__view_get( e__VW.HView, 0 )/2)))/6 );
//view_angle[0]=-image_angle+90



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
	
	
var __b__;
__b__ = action_if_variable(is_dead, 1, 0);
if __b__
{
	__b__ = action_if_dice(5);
	if __b__
	{
		var obj,xx,yy,color;
		obj=instance_create(x-random(5)+random(5),y-random(5)+random(5),obj_smoke)
		obj.image_blend=c_dkgray
	}
}
__b__ = action_if_variable(is_smoking, 1, 0);
if __b__
{
	var obj,xx,yy,color;
	obj=instance_create(x-random(5)+random(5),y-random(5)+random(5),obj_smoke)
	obj.image_blend=c_dkgray
	obj.alarm[0]=150
}
