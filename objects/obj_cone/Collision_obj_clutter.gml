// Inherit the parent event
event_inherited();

collision_step()

//Audio
if can_play
{
	//sound_volume(sound3,.5+obj_player1_car.speed/obj_player1_car.drive_topspeed*1.02)
	sound_volume(snd_collision_cone,.5+speed/point_distance(x,y,view_get_xport(0)+(view_get_wport(0)/2),view_get_yport(0)+(view_get_hport(0)/2)));
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


