var distance,i,x1,x2,y1,y2,d_direction,spr,good,prev_alpha;
prev_alpha=draw_get_alpha();draw_set_alpha(1);good=0;
if gamemaker_registered{if is_real(argument0) and is_real(argument1) and is_real(argument2) and is_real(argument3) and is_real(argument4) and is_real(argument5) and is_real(argument6) and is_real(argument7)
{good=1}if good=1{spr=argument0;x1=argument2;y1=argument3;x2=x1+lengthdir_x(argument5,argument4);y2=y1+lengthdir_y(argument5,argument4);
distance=argument5;d_direction=argument4;for (i=0; i<=distance; i+=sprite_get_width(argument0))
if (i<distance-sprite_get_width(argument0))draw_sprite_ext(argument0,argument1,round(x1+i*cos(degtorad(d_direction))),round(y1-i*sin(degtorad(d_direction))),1,1,d_direction,argument6,argument7)
if (i>distance-sprite_get_width(argument0))draw_sprite_ext(argument0,argument1,round(x1+(i-sprite_get_width(argument0))*cos(degtorad(d_direction))),round(y1-(i-sprite_get_width(argument0))*sin(degtorad(d_direction))),(2-(i-distance)/(sprite_get_width(argument0)/2))/2,1,d_direction,argument6,argument7);}
}else{show_error("this function only works with a registered version of Game Maker",1)}draw_set_alpha(prev_alpha)