var __b__;
__b__ = action_if_variable(can_play, 1, 0);
if __b__
{
{
sound_volume(sound3,.5+obj_player1_car.speed/obj_player1_car.drive_topspeed*1.02)
action_sound(sound3, 0);
can_play = 0;
}
}
action_set_alarm(10, 0);
if sprite_index=spr_cone_stand
{
image_speed=.25
image_index=0
sprite_index=spr_cone_anim
}
action_set_motion(other.direction, other.speed+1);
