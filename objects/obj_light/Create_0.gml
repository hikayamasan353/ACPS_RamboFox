/*
action_create_object(obj_light_carshadow, 0, 33);
action_create_object(obj_pole, 0, 33);


oo=instance_nearest(x,y,light_goto)
dir=point_direction(x,y,oo.x,oo.y)
*/

random1=random(360)


//Pole physics

pole=instance_create_depth(x,y+32,0,obj_pole);
