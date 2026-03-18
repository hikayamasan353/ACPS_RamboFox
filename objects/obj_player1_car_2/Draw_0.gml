//Lights
if islight_on
{
	scr_lights()
}


var xx,yy,xx2,yy2,obj,col,dir,dis;
xx2=lengthdir_x(8,image_angle)
yy2=lengthdir_y(8,image_angle)
xx2=0
yy2=0


if !global.light=c_black
{
	draw_sprite_ext(sprite_index,0,x+3,y+3,image_xscale/1.5,image_yscale/1.5,image_angle,c_black,.5)
}

/////////////////////////////////////////////////////

//Drawing wheels

//Front wheels have steering rotation
xx=x+lengthdir_x(14*size_scale/1.5,image_angle+21*size_scale/1.5)
yy=y+lengthdir_y(14*size_scale/1.5,image_angle+21*size_scale/1.5)
draw_sprite_ext(spr_biggerwheel,0,xx,yy,image_xscale/1.2,image_yscale/1.2,image_angle+stearing_angle*10+min(drive_speed/2,max(0,back_l))*5,c_white,1)

xx=x+lengthdir_x(14*size_scale/1.5,image_angle-21*size_scale/1.5)
yy=y+lengthdir_y(14*size_scale/1.5,image_angle-21*size_scale/1.5)
draw_sprite_ext(spr_biggerwheel,0,xx,yy,image_xscale/1.2,image_yscale/1.2,image_angle+stearing_angle*10-min(drive_speed/2,max(0,back_r))*5,c_white,1)

//Rear wheels don't.
xx=x+lengthdir_x(4*size_scale/1.5,image_angle+90*size_scale/1.5)
yy=y+lengthdir_y(4*size_scale/1.5,image_angle+90*size_scale/1.5)
draw_sprite_ext(spr_biggerwheel,0,xx,yy,image_xscale/1.2,image_yscale/1.2,image_angle,c_white,1)

xx=x+lengthdir_x(4*size_scale/1.5,image_angle-90*size_scale/1.5)
yy=y+lengthdir_y(4*size_scale/1.5,image_angle-90*size_scale/1.5)
draw_sprite_ext(spr_biggerwheel,0,xx,yy,image_xscale/1.2,image_yscale/1.2,image_angle,c_white,1)

////////////////////////////////////////////////////////////

//Drawing car
draw_car()

draw_set_alpha(brake_alpha)

if islight_on
{draw_set_blend_mode(bm_add)
//draw_sprite_ext(spr_carlight,0,x+xx2,y+yy2,image_xscale,image_yscale,image_angle,light_color,min(.5-light_alpha,brake_alpha))
if !keyboard_check(vk_up)
if reverse_switch
{//draw_sprite_ext(spr_carlight,0,x+xx2,y+yy2,image_xscale,image_yscale,image_angle,light_color,min(1-light_alpha,brake_alpha))
if keyboard_check(vk_down)
{//draw_sprite_ext(spr_carlight,0,x+xx2,y+yy2,image_xscale,image_yscale,image_angle,c_white,min(.5,brake_alpha))
}}
if keyboard_check(vk_up)
if reverse_switch{
//draw_sprite_ext(spr_carlight,0,x+xx2,y+yy2,image_xscale,image_yscale,image_angle,c_red,min(1,1))
}
if reverse_switch=0
if keyboard_check(vk_down){
//draw_sprite_ext(spr_carlight,0,x+xx2,y+yy2,image_xscale,image_yscale,image_angle,c_red,min(.5,brake_alpha))
}
}
if islight_on=1
draw_sprite_ext(spr_carlight,0,x+xx2,y+yy2,image_xscale,image_yscale,image_angle,light_color,min(.5,brake_alpha))

//if reverse_switch=1
//if keyboard_check(vk_up){
//draw_sprite_ext(spr_carlight,0,x+xx2,y+yy2,image_xscale,image_yscale,image_angle,c_red,min(.5,brake_alpha))}

if islight_on=1
draw_sprite_ext(spr_carlight,0,x+xx2,y+yy2,image_xscale,image_yscale,image_angle,light_color,.5)

draw_set_blend_mode(bm_normal)
draw_set_alpha(1)
//c_f
/*
var xx,yy,xx2,yy2,obj,spd;
draw_set_color(c_red)

xx=x+lengthdir_x(23,image_angle+20)
yy=y+lengthdir_y(23,image_angle+20)
draw_circle(xx,yy,2.5,1)


draw_set_color(c_blue)
xx=x+lengthdir_x(23,image_angle-20)
yy=y+lengthdir_y(23,image_angle-20)
draw_circle(xx,yy,2.5,1)



draw_set_color(c_lime)
xx=x+lengthdir_x(10,image_angle+45+180)
yy=y+lengthdir_y(10,image_angle+45+180)
draw_circle(xx,yy,2.5,1)


draw_set_color(c_yellow)
xx=x+lengthdir_x(10,image_angle-45-180)
yy=y+lengthdir_y(10,image_angle-45-180)
draw_circle(xx,yy,2.5,1)

draw_set_color(c_white)
*/
if room=room_autosoccer
	if view_current=0
	{
		draw_set_color(c_red)
		draw_circle(x+lengthdir_x(5,image_angle),y+lengthdir_y(5,image_angle),19,1)
		var dir,xx,yy;
		xx=x+lengthdir_x(5,image_angle)
		yy=y+lengthdir_y(5,image_angle)
		dir=point_direction(xx,yy,obj_soccerball.x,obj_soccerball.y)
		draw_arrow(xx+lengthdir_x(19,dir),yy+lengthdir_y(19,dir),xx+lengthdir_x(33,dir),yy+lengthdir_y(33,dir),10)
	}
/* */
/*  */
