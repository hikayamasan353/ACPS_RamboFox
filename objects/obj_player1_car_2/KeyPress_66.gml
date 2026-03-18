action_set_relative(1);
var __b__;
__b__ = action_if_variable(is_dead, 0, 0);
if __b__
{

	action_create_object(obj_explode, 0, 0);
	action_sound(die, 0);
	front_l=30
	front_r=30
	back_l=30
	back_r=30

	is_smoking=1
	alarm[2]=30
	{
		action_set_relative(0);
		is_dead = 1;
		action_set_relative(1);
	}

}
action_set_relative(0);
