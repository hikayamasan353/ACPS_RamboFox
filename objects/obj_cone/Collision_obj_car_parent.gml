

//To be deprecated
var car_speed=0;
if(obj_car_parent.drive_speed>0)
	car_speed=obj_car_parent.drive_speed;
else if(obj_car_parent.reverse_var>0)
	car_speed=obj_car_parent.reverse_var;
else car_speed=0;

if can_play
{

		sound_volume(snd_collision_cone,.5+obj_car_parent.speed*car_speed*(mass/4))
		action_sound(snd_collision_cone, 0);
	can_play = 0;
}
alarm[0]=10;
if sprite_index=spr_cone_stand
{
image_speed=.25
image_index=0
sprite_index=spr_cone_anim
}

//Cone physics bouncing WIP
//action_set_motion(other.direction, other.speed+1);
//motion_set(other.direction,other.speed+1);
motion_set(other.direction,other.speed+(car_speed*mass)+1);
