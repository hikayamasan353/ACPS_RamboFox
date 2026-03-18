if left_or_right=1
{turn+=other.speed/2}
if left_or_right=-1
{turn-=other.speed/2}
image_angle+=turn
turn/=1.5
action_set_motion(other.direction, other.speed/1.02);
