
var temp;
temp=scr_return90s(random(360))
image_angle=270
//view_angle=90

is_dead=0
script_execute(scr_init,0,0,0,0,0);
image_index=0
image_speed=0

///////////

collision_init(1);
collision_line_init(spr_pxl);

if external_replace=1
{
sprite_replace(sprite11,directory_bl,1,1,1,1,1,0,0)
sprite_replace(sprite12,directory_br,1,1,1,1,1,0,0)
sprite_replace(sprite13,directory_fl,1,1,1,1,1,0,0)
sprite_replace(sprite14,directory_fr,1,1,1,1,1,0,0)

sprite_replace(trans_rear_left,directory_bl2,1,1,1,1,1,0,0)
sprite_replace(trans_rear_right,directory_br2,1,1,1,1,1,0,0)
sprite_replace(trans_front_left,directory_fl2,1,1,1,1,1,0,0)
sprite_replace(trans_front_right,directory_fr2,1,1,1,1,1,0,0)

sprite_replace(dropped_bl,directory_bl3,1,1,1,1,1,0,0)
sprite_replace(dropped_br,directory_br3,1,1,1,1,1,0,0)
sprite_replace(dropped_fl,directory_fl3,1,1,1,1,1,0,0)
sprite_replace(dropped_fr,directory_fr3,1,1,1,1,1,0,0)
sprite_replace(dropped_fr,directory_fr3,1,1,1,1,1,0,0)
sprite_replace(spr_car,directory_cl,1,1,1,1,1,x_orig,y_orig)
}
__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2 )
__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2 )
is_dropped_bl=0
is_dropped_br=0
is_dropped_fl=0
is_dropped_fr=0
action_set_alarm(1, 1);
can_press=1

is_reverse=0

image_angle=270
//view_angle[0]=0
image_angle = 270;
