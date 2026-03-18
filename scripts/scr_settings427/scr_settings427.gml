//Car settings script

function scr_settings427() {
	size_scale=1.5 //size scale for eazy reference

	stearing_response=10  //The larger the value, the more twitchy the handling is.
	                     //The higher the value, the more "squirally" the handling will be.
	stearing_max=45     //How far the stearing can go left or right
	stearing_loss=1.5    //Stearing dampening to prevent "weaving"
	stearing_weight=15  //The larger the value, the larger the turning circle
	stearing_camber=10000   //Cars tend to "drift" into a direction while drifting, this simulates that.

	handbrake_flip_do=1 //either true or false, dictates whether the car should flip when space bar is pressed
	handbrake_flip_response=.3 //the higher the value, the less it flips
	handbrake_dampening=20
	handbrake_loss=2.5
	handbrake_camber=3
	handbrake_cuttof_speed=5 //speed at which point, stops slowing the car down, and allows it to do burnouts
	handbrake_divider=1.02 //the higher the value, the slower the burnout
	handbrake_brake_speed=1.2 //how fast it responds
	handbrake_friction_multiplier=1.2 //how much the car skids out
	handbrake_force=3 //^

	slip_stiffnes=2.5*size_scale    //This determines how fast it is for under/over stear
	slip_settings=1*size_scale      //1 = overstear, -1 = understear.
	slip_camber=250*size_scale      //Not all cars drift well. Non-Drift cars just stop when they spin out
	                     //This simulates this, the larger the variable, the more easier the car can be drifted (without slowing down)

	drive_stability=1.0*size_scale  //Dur
	drive_topspeed=10*size_scale    //Top speed it can go
	drive_loss=.005*size_scale      //How fast it looses speed (in pixels)
	drive_peddlespeed=.1*size_scale//how fast it accelorates
	drive_brakemultiplier=1.2*size_scale//How fast it stops
	drive_grip=2 //the higher the value, the less grip the car has

	reverse_stability=.1*size_scale
	reverse_topspeed=2*size_scale
	reverse_loss=0.005*size_scale
	reverse_peddlespeed=.05*size_scale
	reverse_brakemultiplier=1.2*size_scale
	reverse_grip=1 //the higher the value, the slower it goes

	offroad_stability=0.1*size_scale
	offroad_loss=1.002//size_scale
	offroad_wheelclip_multiplier=1*size_scale
	offroad_wheelclip_max=10*size_scale

	external_replace=1   //checks whether the program should replace defualt deltas with external ones
	damage_multiplier=3/size_scale

	view_speed_multiplier=10*size_scale
	view_size=400
	view_devider=2
	view_multiplier=1

	front_l=0 //health for front and rear pannels.
	          //if the value is -30, it is treated as if it has armour
	          //if the value is 30, it is treated as if it is already damaged
	front_r=0
	back_l=0
	back_r=0

	//collision mask:
	directory_cl="collision_mask.bmp"
	x_orig=16
	y_orig=17

	//skin settings below this line:
	directory_fl="delta1/f_left.bmp"
	directory_fr="delta1/f_right.bmp"
	directory_bl="delta1/b_left.bmp"
	directory_br="delta1/b_right.bmp"

	//busted deltas below here:
	directory_fl2="delta2/f_left.bmp"
	directory_fr2="delta2/f_right.bmp"
	directory_bl2="delta2/b_left.bmp"
	directory_br2="delta2/b_right.bmp"

	//dropped deltas here:
	directory_fl3="delta3/f_left_drop.bmp"
	directory_fr3="delta3/f_right_drop.bmp"
	directory_bl3="delta3/b_left_drop.bmp"
	directory_br3="delta3/b_right_drop.bmp"

	//frame deltas here:
	f_fl="delta4/f_left_frame.bmp"
	f_fr="delta4/f_right_frame.bmp"
	b_fl="delta4/b_left_frame.bmp"
	b_fr="delta4/b_right_frame.bmp"

	global.light=c_gray //ambient light used by the lights and shadow engine



}
