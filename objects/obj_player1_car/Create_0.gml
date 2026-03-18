
var temp;
temp=scr_return90s(random(360))
image_angle=90
//view_angle=90

//Initialize the car

scr_init();
image_index=0
image_speed=0

/////

//Collision init
collision_init(1);
collision_line_init(spr_pxl);


//sprite replacement from execution from file
if (external_replace==1)
{
	//replaced faulty code - hikayamasan353
	
    //sprite_replace(sprite11,directory_bl,1,1,1,1,1,0,0)
	//sprite_replace(sprite12,directory_br,1,1,1,1,1,0,0)
	//sprite_replace(sprite13,directory_fl,1,1,1,1,1,0,0)
	//sprite_replace(sprite14,directory_fr,1,1,1,1,1,0,0)
	
	sprite_replace(spr_delta_rl,"delta1/b_left.bmp",1,1,1,0,0);
	sprite_replace(spr_delta_rr,"delta1/b_right.bmp",1,1,1,0,0);
	sprite_replace(spr_delta_fl,"delta1/f_left.bmp",1,1,1,0,0);
	sprite_replace(spr_delta_fr,"delta1/f_right.bmp",1,1,1,0,0);
	
    
    
    
    
    //sprite_replace(trans_rear_left,directory_bl2,1,1,1,1,1,0,0)
   //sprite_replace(trans_rear_right,directory_br2,1,1,1,1,1,0,0)
    //sprite_replace(trans_front_left,directory_fl2,1,1,1,1,1,0,0)
    //sprite_replace(trans_front_right,directory_fr2,1,1,1,1,1,0,0)
	
	sprite_replace(trans_rear_left,"delta2/b_left.bmp",1,1,1,0,0);
	sprite_replace(trans_rear_right,"delta2/b_right.bmp",1,1,1,0,0);
	sprite_replace(trans_front_left,"delta2/f_left.bmp",1,1,1,0,0);
	sprite_replace(trans_front_right,"delta2/f_right.bmp",1,1,1,0,0);
	
	
    
    //sprite_replace(dropped_bl,directory_bl3,1,1,1,1,1,0,0)
    //sprite_replace(dropped_br,directory_br3,1,1,1,1,1,0,0)
    //sprite_replace(dropped_fl,directory_fl3,1,1,1,1,1,0,0)
    //sprite_replace(dropped_fr,directory_fr3,1,1,1,1,1,0,0)
	
	sprite_replace(dropped_bl,"delta3/b_left.bmp",1,1,1,0,0);
	sprite_replace(dropped_br,"delta3/b_right.bmp",1,1,1,0,0);
	sprite_replace(dropped_fl,"delta3/f_left.bmp",1,1,1,0,0);
	sprite_replace(dropped_fr,"delta3/f_right.bmp",1,1,1,0,0);
	
	
	
    //sprite_replace(spr_car,directory_cl,1,1,1,1,1,x_orig,y_orig)
	sprite_replace(spr_car,"collision_mask.bmp",1,1,1,16,17)
}



__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2 )
__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2 )



alarm[1]=1
can_press=1

is_reverse=0

image_angle=90
//view_angle[0]=0
