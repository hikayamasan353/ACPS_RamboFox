function do_skids() {
	var xx,yy,xx2,yy2,obj,spd;
	spd=(drive_topspeed-speed)
	xx=x+lengthdir_x(12*size_scale/1.5,image_angle+25*size_scale/2)
	yy=y+lengthdir_y(12*size_scale/1.5,image_angle+25*size_scale/2)
	xx2=xprevious+lengthdir_x(12*size_scale/1.5,pimage_angle+25*size_scale/2)
	yy2=yprevious+lengthdir_y(12*size_scale/1.5,pimage_angle+25*size_scale/2)
	obj=instance_create(xx,yy,obj_skidmark)
	obj.image_angle=point_direction(xx,yy,xx2,yy2)
	obj.image_xscale=point_distance(xx,yy,xx2,yy2)/100
	obj.image_alpha=min(1.2,abs(scr_check(0,image_angle,direction))/50+max(0,front_l)/30+on_dirt)
	obj.image_yscale=min(1.2,min((abs(scr_check(0,image_angle,direction))/10*2),speed/5)+on_dirt)
	obj.ddirection=direction
	if collision_circle(xx,yy,5,obj_solids,1,1)
	{image_angle+=min(drive_speed*offroad_wheelclip_multiplier,offroad_wheelclip_max)}


	xx=x+lengthdir_x(12*size_scale/1.5,image_angle-22*size_scale/2)
	yy=y+lengthdir_y(12*size_scale/1.5,image_angle-22*size_scale/2)
	xx2=xprevious+lengthdir_x(12*size_scale/1.5,pimage_angle-22*size_scale/2)
	yy2=yprevious+lengthdir_y(12*size_scale/1.5,pimage_angle-22*size_scale/2)
	obj=instance_create(xx,yy,obj_skidmark)
	obj.image_angle=point_direction(xx,yy,xx2,yy2)
	obj.image_xscale=point_distance(xx,yy,xx2,yy2)/100
	obj.image_alpha=min(1.2,abs(scr_check(0,image_angle,direction))/50+max(0,front_r)/30+on_dirt)
	obj.image_yscale=min(1.2,min((abs(scr_check(0,image_angle,direction))/10*2),speed/5)+on_dirt)
	obj.ddirection=direction
	if collision_circle(xx,yy,5,obj_solids,1,1)
	{image_angle-=min(drive_speed*offroad_wheelclip_multiplier,offroad_wheelclip_max)}


	xx=x+lengthdir_x(7*size_scale/1.5,image_angle+(90+32))
	yy=y+lengthdir_y(7*size_scale/1.5,image_angle+(90+32))
	xx2=xprevious+lengthdir_x(7*size_scale/1.5,pimage_angle+90+32)
	yy2=yprevious+lengthdir_y(7*size_scale/1.5,pimage_angle+90+32)
	obj=instance_create(xx,yy,obj_skidmark)
	obj.image_angle=point_direction(xx,yy,xx2,yy2)
	obj.image_xscale=point_distance(xx,yy,xx2,yy2)/100
	obj.image_alpha=min(1.5,is_handbrake*1+max(0,min(1.1,abs(scr_check(0,image_angle,direction))/50+max(0,back_r)/30+on_dirt)))
	obj.image_yscale=min(1.5,min(abs(scr_check(0,image_angle,direction))/100*2,1)+on_dirt)+is_handbrake/1.2
	obj.ddirection=direction

	xx=x+lengthdir_x(7*size_scale/1.5,image_angle-(90+32))
	yy=y+lengthdir_y(7*size_scale/1.5,image_angle-(90+32))
	xx2=xprevious+lengthdir_x(7*size_scale/1.5,pimage_angle-(90+32))
	yy2=yprevious+lengthdir_y(7*size_scale/1.5,pimage_angle-(90+32))
	obj=instance_create(xx,yy,obj_skidmark)
	obj.image_angle=point_direction(xx,yy,xx2,yy2)
	obj.image_xscale=point_distance(xx,yy,xx2,yy2)/100
	obj.image_alpha=min(1.5,is_handbrake*1+max(0,min(1.1,abs(scr_check(0,image_angle,direction))/50+max(0,back_l)/30+on_dirt)))
	obj.image_yscale=min(1.5,min(abs(scr_check(0,image_angle,direction))/100*2,1)+on_dirt)+is_handbrake/1.2
	obj.ddirection=direction


}
