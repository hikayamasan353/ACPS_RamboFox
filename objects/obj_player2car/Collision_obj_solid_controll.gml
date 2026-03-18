var xx,yy,xx2,yy2;
/*

xx=x+lengthdir_x(23,image_angle+20)
yy=y+lengthdir_y(23,image_angle+20)
xx2=xprevious+lengthdir_x(16,pimage_angle+25)
yy2=yprevious+lengthdir_y(16,pimage_angle+25)
if collision_circle(xx,yy,2.5,obj_solid_controll,0,1){
front_l+=drive_speed*damage_multiplier+reverse_var*damage_multiplier
spin_diff+=2
}
xx=x+lengthdir_x(23,image_angle-20)
yy=y+lengthdir_y(23,image_angle-20)
xx2=xprevious+lengthdir_x(16,pimage_angle-25)
yy2=yprevious+lengthdir_y(16,pimage_angle-25)
if collision_circle(xx,yy,2.5,obj_solid_controll,0,1){front_r+=drive_speed*damage_multiplier+reverse_var*damage_multiplier
spin_diff-=2}
xx=x+lengthdir_x(10,image_angle+45+180)
yy=y+lengthdir_y(10,image_angle+45+180)
xx2=xprevious+lengthdir_x(6,pimage_angle+90+180)
yy2=yprevious+lengthdir_y(6,pimage_angle+90+180)
if collision_circle(xx,yy,2.5,obj_solid_controll,0,1){back_r+=drive_speed*damage_multiplier+reverse_var*damage_multiplier
spin_diff+=2}

xx=x+lengthdir_x(10,image_angle-45-180)
yy=y+lengthdir_y(10,image_angle-45-180)
xx2=xprevious+lengthdir_x(7,pimage_angle-90-180)
yy2=yprevious+lengthdir_y(7,pimage_angle-90-180)
if collision_circle(xx,yy,2.5,obj_solid_controll,0,1){back_l+=drive_speed*damage_multiplier+reverse_var*damage_multiplier
spin_diff-=2}

if front_l>30
{front_l=30}
if front_r>30
{front_r=30}
if back_l>30
{back_l=30}
if back_r>30
{back_r=30}

/* */
script_execute(collision_step,0,0,0,0,0);
var __b__;
__b__ = action_if_number(obj_crash, 0, 0);
if __b__
{
__b__ = action_if_variable(room, room_drift_track, 0);
if __b__
{
action_create_object(obj_crash, 0, 0);
}
}
reverse_var=0
drive_speed=drive_speed/1.005
/* */
/*  */
