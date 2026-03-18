var xx,yy,aa;
if global.light=c_black{
aa=max(0,(50-point_distance(x,y,obj_player1_car.x,obj_player1_car.y)))/50
xx=lengthdir_x(min(5,point_distance(x,y,obj_player1_car.x,obj_player1_car.y)),point_direction(x,y,obj_player1_car.x,obj_player1_car.y))
yy=lengthdir_y(min(5,point_distance(x,y,obj_player1_car.x,obj_player1_car.y)),point_direction(x,y,obj_player1_car.x,obj_player1_car.y))
draw_sprite_ext(spr_car,0,obj_player1_car.x+xx,obj_player1_car.y+yy,obj_player1_car.image_xscale,obj_player1_car.image_yscale,obj_player1_car.image_angle,c_black,aa)
}

