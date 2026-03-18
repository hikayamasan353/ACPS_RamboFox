var xx,yy,dd;


if nearest.islight_on
{

dd=nearest.stearing_angle*10
if dd>nearest.speed*3
{dd=nearest.speed*3}
if dd<-nearest.speed*3
{dd=-nearest.speed*3}
dd=0
if instance_number(obj_player1_car_old) >= 1
{
direction = nearest.image_angle;
image_angle = direction;
x = nearest.x + lengthdir_x(7,direction);
y = nearest.y + lengthdir_y(7,direction);
}
else instance_destroy();
draw_set_blend_mode(bm_add);
surface_set_target(global.lightSurface);
if highlo_beam
{if visible_beam{
xx=lengthdir_x(10,image_angle+41)
yy=lengthdir_y(10,image_angle+41)
if nearest.front_l<2
draw_sprite_ext(spr_torch,image_index,x-global.surfacex+xx,y-global.surfacey+yy,0.5,0.7,image_angle+dd,c_white,1);
xx=lengthdir_x(10,image_angle-41)
yy=lengthdir_y(10,image_angle-41)
if nearest.front_r<2
draw_sprite_ext(spr_torch,image_index,x-global.surfacex+xx,y-global.surfacey+yy,0.5,0.7,image_angle+dd,c_white,1);}}
else{if visible_beam{
xx=lengthdir_x(10,image_angle+41)
yy=lengthdir_y(10,image_angle+41)
if nearest.front_l<2
draw_sprite_ext(spr_torch,image_index,x-global.surfacex+xx,y-global.surfacey+yy,1,0.4,image_angle+dd,c_white,1);
xx=lengthdir_x(10,image_angle-41)
yy=lengthdir_y(10,image_angle-41)
if nearest.front_r<2
draw_sprite_ext(spr_torch,image_index,x-global.surfacex+xx,y-global.surfacey+yy,1,0.4,image_angle+dd,c_white,1);}}





draw_sprite_ext(spr_carlight,0,nearest.x-global.surfacex,nearest.y-global.surfacey,nearest.image_xscale,nearest.image_yscale,nearest.image_angle,nearest.light_color,.5-nearest.light_alpha)

if !keyboard_check(vk_up)
if keyboard_check(vk_down)
{
draw_sprite_ext(spr_carlight,0,nearest.x-global.surfacex,nearest.y-global.surfacey,nearest.image_xscale,nearest.image_yscale,nearest.image_angle,nearest.light_color,.5-nearest.light_alpha)}
if !keyboard_check(vk_up)
if keyboard_check(vk_down)
{
draw_sprite_ext(spr_carlight,0,nearest.x-global.surfacex,nearest.y-global.surfacey,nearest.image_xscale,nearest.image_yscale,nearest.image_angle,nearest.light_color,1-nearest.light_alpha)
}
if keyboard_check(vk_up)
if nearest.reverse_switch
{
draw_sprite_ext(spr_carlight,0,nearest.x-global.surfacex,nearest.y-global.surfacey,nearest.image_xscale,nearest.image_yscale,nearest.image_angle,c_red,1)
}




var col,dir,dis,alpha,angl,isd;
dis=30
dir=point_direction(nearest.x,nearest.y,nearest.x+lengthdir_x(-500,nearest.image_angle),nearest.y+lengthdir_y(-500,nearest.image_angle))
//col=collision_line_ext(nearest.x,nearest.y,dir,dis-60)
col=scr_collision_line_ext(x,y,dir,dis,obj_solid_controll)
alpha=(40-col)/40
angl=nearest.image_angle
angl=scr_return90s(angl)
isd=point_distance(nearest.x,nearest.y,nearest.x+lengthdir_x(col,dir),nearest.y+lengthdir_y(col,dir))/10
isd=min(3,isd)
//if col<dis-1
//{
//if !keyboard_check(vk_up)
//{
//draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,nearest.light_color,nearest.alpha-light_alpha+.5)
//if keyboard_check(vk_down)
//draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,nearest.light_color,nearest.alpha-light_alpha+.5)
//}
//else
//{if nearest.reverse_switch{
//draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,nearest.light_color,nearest.alpha-light_alpha+.5)
//draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,nearest.light_color,nearest.alpha-light_alpha+.5)
//}}
//}

//draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,nearest.light_color,nearest.alpha-light_alpha+.5)




if nearest.reverse_switch=0
{
if !keyboard_check(vk_down)
{draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,c_red,nearest.image_alpha+.5)}
else
{draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,c_red,nearest.image_alpha+1)}
}

if nearest.reverse_switch=1
{
if !keyboard_check(vk_up)
{draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,c_white,nearest.image_alpha+.5)}
else
{draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,c_red,nearest.image_alpha+1)}
}


/*
if reverse_switch=1
{if keyboard_check(vk_up)
{
draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,c_red,nearest.alpha-light_alpha+1)
}else
{draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,c_white,nearest.alpha-light_alpha+1)
}}
if reverse_switch=0
{if keyboard_check(vk_down)
{
draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,c_red,nearest.alpha-light_alpha+1)
}else
{draw_sprite_ext(spr_reflection,0,nearest.x+lengthdir_x(-col,nearest.image_angle)-global.surfacex,nearest.y+lengthdir_y(-col,nearest.image_angle)-global.surfacey,isd/5,1+isd/5-.4,nearest.image_angle,c_red,nearest.alpha-light_alpha+.5)
}}





*/








draw_set_blend_mode(bm_normal);




surface_reset_target();}
/* */
/*  */
