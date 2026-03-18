if handbrake_flip_do=1
if reverse_switch=0
{
ss=scr_check(0,image_angle,direction)
spin_diff=ss/handbrake_flip_response
spin_divider=handbrake_dampening
}
