//Script faulty - needs work.

function warp_final(x1,y1,z1,x2,y2,z2, texid, dir, lf, rf, rb, lb) 
{
	var lines,wx,wy,surf_mid_x,surf_mid_y,p_mid_x,p_mid_y,d1x1,d1y1,d1x2,d1y2,d1x3,d1y3,d1x4,d1y4,d2x1,d2y1,d2x2,d2y2,d2x3,d2y3,d2x4,d2y4,c1x,c1y,c2x,c2y;
	//Inits

	//Widths
	wx=(x2-x1)/2 //width
	wy=(y2-y1)/2 //width

	surf_mid_x=x1+wx
	surf_mid_y=y1+wy

	//code for indentation effects
	
	/*
	Old spaghettic code by RamboFox
	lf=abs(lf) 
	rf=abs(rf)
	rb=abs(rb)
	lb=abs(lb)
	*/
	
	//Rewritten - hikayamasan353
	var p_deltas1=[lf,rf,rb,lb];
	for(var i0=0;i0<array_length(p_deltas1);i0++)
	{
		p_deltas1[i0]=abs(p_deltas1[i0]);
	}
	

	
	
	//coordinates on the surface when rotated, including texture modifications for idention effects
	d1x1=surf_mid_x+lengthdir_x(-point_distance(x1,y1,surf_mid_x,surf_mid_y)+rb,point_direction(x1,y1,surf_mid_x,surf_mid_y)+dir)
	d1y1=surf_mid_y+lengthdir_y(-point_distance(x1,y1,surf_mid_x,surf_mid_y)+rb,point_direction(x1,y1,surf_mid_x,surf_mid_y)+dir)
	d1x2=surf_mid_x+lengthdir_x(-point_distance(x2,y1,surf_mid_x,surf_mid_y)+lf,point_direction(x2,y1,surf_mid_x,surf_mid_y)+dir)
	d1y2=surf_mid_y+lengthdir_y(-point_distance(x2,y1,surf_mid_x,surf_mid_y)+lf,point_direction(x2,y1,surf_mid_x,surf_mid_y)+dir)
	d1x3=surf_mid_x+lengthdir_x(-point_distance(x2,y2,surf_mid_x,surf_mid_y)+rf,point_direction(x2,y2,surf_mid_x,surf_mid_y)+dir)
	d1y3=surf_mid_y+lengthdir_y(-point_distance(x2,y2,surf_mid_x,surf_mid_y)+rf,point_direction(x2,y2,surf_mid_x,surf_mid_y)+dir)
	d1x4=surf_mid_x+lengthdir_x(-point_distance(x1,y2,surf_mid_x,surf_mid_y)+lb,point_direction(x1,y2,surf_mid_x,surf_mid_y)+dir)
	d1y4=surf_mid_y+lengthdir_y(-point_distance(x1,y2,surf_mid_x,surf_mid_y)+lb,point_direction(x1,y2,surf_mid_x,surf_mid_y)+dir)
	d2x1=d1x1
	d2y1=d1y1
	d2x2=d1x2
	d2y2=d1y2
	d2x3=d1x3
	d2y3=d1y3
	d2x4=d1x4
	d2y4=d1y4

	//The middle point of the block
	//p_mid_x=surf_mid_x+lengthdir_x(point_distance(p_mid_x,p_mid_y,surf_mid_x,surf_mid_y)/(__view_get( e__VW.WView, 0 )/mean(z1,z2)),point_direction(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y))
	//p_mid_y=surf_mid_y+lengthdir_y(point_distance(p_mid_x,p_mid_y,surf_mid_x,surf_mid_y)/(__view_get( e__VW.WView, 0 )/mean(z1,z2)),point_direction(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y))

	global.mid_x=surf_mid_x+lengthdir_x(point_distance(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y)/(__view_get( e__VW.WView, 0 )/mean(z1,z2)),point_direction(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y))
	global.mid_y=surf_mid_y+lengthdir_y(point_distance(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y)/(__view_get( e__VW.WView, 0 )/mean(z1,z2)),point_direction(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y))


	//From here on, I have no idea how to draw individual texture polygons with the different sprites...
	//...all I have managed to do is have the car halved diagonally with 2 different sprite colors...
	//HELP ME!
	draw_set_color(c_white)
	draw_primitive_begin_texture(pr_trianglelist,sprite_get_texture(texid,0))
	draw_vertex_texture(d2x1,d2y1,0,0)
	draw_vertex_texture(d2x2,d2y2,1,0)
	draw_vertex_texture(d2x3,d2y3,1,1)

	draw_vertex_texture(d2x1,d2y1,0,0)
	draw_vertex_texture(d2x4,d2y4,0,1)
	draw_vertex_texture(d2x3,d2y3,1,1)
	draw_primitive_end()



}
