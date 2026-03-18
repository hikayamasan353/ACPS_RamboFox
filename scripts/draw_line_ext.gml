if gamemaker_registered{var left1x,left1y,right1x,right1y,left2x,left2y,right2x,right2y,pointdir,thick,prev_alpha,good;
prev_alpha=draw_get_alpha();draw_set_alpha(1);good=0;
if is_real(argument0) and is_real(argument1) and is_real(argument2) and is_real(argument3) and is_real(argument4) and is_real(argument5) and is_real(argument6)
{good=1}else{show_error("Wrong set of arguments",1)}
pointdir=point_direction(argument0,argument1,argument2,argument3); thick=argument4/2; 
left1x=argument0+lengthdir_x(thick,pointdir+90);left1y=argument1+lengthdir_y(thick,pointdir+90); 
right1x=argument0+lengthdir_x(thick,pointdir-90);right1y=argument1+lengthdir_y(thick,pointdir-90); 
left2x=argument2+lengthdir_x(thick,pointdir+90);left2y=argument3+lengthdir_y(thick,pointdir+90); 
right2x=argument2+lengthdir_x(thick,pointdir-90);right2y=argument3+lengthdir_y(thick,pointdir-90); 
if good=1{draw_circle_color(argument0,argument1,argument4/2,argument5,argument5,0)
draw_circle_color(argument0,argument1,argument4/2,argument6,argument6,1)
draw_circle_color(argument2,argument3,argument4/2,argument5,argument5,0)
draw_circle_color(argument2,argument3,argument4/2,argument6,argument6,1)
draw_triangle_color(left1x,left1y,right1x,right1y,left2x,left2y,argument5,argument5,argument5,false); 
draw_triangle_color(right1x,right1y,left2x,left2y,right2x,right2y,argument5,argument5,argument5,false); 
draw_line_color(left1x,left1y,left2x,left2y,argument6,argument6); 
draw_line_color(right2x,right2y,right1x,right1y,argument6,argument6);
draw_circle_color(argument0,argument1,max(0,argument4/2-1),argument5,argument5,0)}}
else{show_error("this function only works with a registered version of Game Maker",1)}draw_set_alpha(prev_alpha)