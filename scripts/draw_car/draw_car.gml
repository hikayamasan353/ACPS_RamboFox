function draw_car()
{
	var size,diff,ofset,xx2,yy2;
	size=15*size_scale/1.5
	diff=22
	ofset=0
	xx2=lengthdir_x(8,image_angle)
	yy2=lengthdir_y(8,image_angle)

//Warping
//That's where the car image sprite drawing handles.
//
//back_l, back_r, front_l, front_r - delta damage variables.
//To be replaced with a different code

/*
	if back_l>2 and back_l<6
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,trans_rear_left,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
	if back_l<3
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,sprite11,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
	if back_l>6
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,frame_bl,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}


	if back_r>2 and back_r<6
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,trans_rear_right,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
	if back_r<3
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,sprite12,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
	if back_r>6
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,frame_br,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}


	if front_l>2 and front_l<6
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,trans_front_left,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
	if front_l<3
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,sprite13,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
	if front_l>6
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,frame_fl,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}


	if front_r>2 and front_r<6
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,trans_front_right,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
	if front_r<3
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,sprite14,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
	if front_r>6
	{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,frame_fr,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
*/


//Draw deltas


//Frame deltas
spr_delta0=[frame_fl,frame_fr,frame_bl,frame_br]

//Body panel deltas
//Whole deltas
spr_delta1=[spr_delta_fl,spr_delta_fr,spr_delta_rl,spr_delta_rr]
//Damage 33% deltas
spr_delta2=[trans_front_left,trans_front_right,trans_rear_left,trans_rear_right]
//Damage 66% deltas
spr_delta3=[dropped_fl,dropped_fr,dropped_bl,dropped_br]

//Draw frame deltas first
for(var i=0;i<array_length(spr_delta0);i++)
{
	draw_sprite_ext(spr_delta0[i],0,x,y,image_xscale,image_yscale,image_angle,c_white,1);
	
}

//Draw whole deltas
for(var i=0;i<4;i++)
{
	//Draw deltas only for whole damage
	if(delta_damages[i]<1)
	{
		//Damage <30%
		if(delta_damages[i]<0.3)
		{
			draw_sprite_ext(spr_delta1[i],0,x,y,image_xscale,image_yscale,image_angle,c_white,1);
		}
		//Damage 30-59%
		else if((delta_damages[i]>=0.3)&&(delta_damages[i]<0.6))
		{
			draw_sprite_ext(spr_delta2[i],0,x,y,image_xscale,image_yscale,image_angle,c_white,1);

		}
		//Damage 60% and more until 100%
		else
		{
			draw_sprite_ext(spr_delta3[i],0,x,y,image_xscale,image_yscale,image_angle,c_white,1);
		}
	}
}









/*
for(var i1=0;i1<array_length(delta_damages);i1++)
{
	if((delta_damages[i1]>2)&&(delta_damages[i1]<6))
		break; //Replace with drawing code
	else if delta_damages[i1]<3
		break; //Replace with drawing code
	else if delta_damages[i1]>6
		break; //Replace with drawing code
}
*/



}
