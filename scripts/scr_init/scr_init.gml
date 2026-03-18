
//This script initializes the car.


function scr_init()
{
	brake_alpha=0
	spin_divider=1


	
	//Load car settings
	//Deprecated - hikayamasan353
	//execute_file("settings_427.txt")
	scr_settings427b();
	
	
	
	
	
	

	global.size_dif=size_scale/1.5
	is_handbrake=0
	
	//Damage variables by RamboFox
	is_dead=0
	is_smoking=0
	is_dropped_bl=0
	is_dropped_br=0
	is_dropped_fl=0
	is_dropped_fr=0
	
	
	sound_right=0
	sound_left=0
	spin_diff=0
	on_dirt=0

	
	
	//Room specific data
	/*
		//if room=room2
	//{image_angle=270}
	//if room=room5
	//{image_angle=90}
	if room=room_drift_track
		image_angle=90
	if room=room_autosoccer
		image_angle=270
	*/

	
	stearing_angle=0
	drive_speed=0
	stearing_controllangle=0
	stearing_wheelangle=0
	left=0
	right=0
	image_xscale=.75*size_scale/1.5
	image_yscale=.75*size_scale/1.5
	prev_ss=0
	pimage_angle=image_angle

	reverse_var=0
	reverse_switch=0
	is_drift=0
	reverse_speed=0
	
	//Lights
	light_color=c_red
	light_alpha=1
	islight_on=1


	damaged_wheels=1
	wheel_wobble_max=5
	wheel_wobble_factor=0
	wheel_wobble_variable=0


	//front_l=0
	//front_r=0
	//back_l=0
	//back_r=0

	//wheel damage:
	lf=0
	lr=0

	rf=1
	rr=1



}
