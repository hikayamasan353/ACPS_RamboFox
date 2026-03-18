var lf,rf,lb,rb,x1,x2,y1,y2,z1,z2,texid,dir,lines,wx,wy,surf_mid_x,surf_mid_y,mid_x,mid_y,d1x1,d1y1,d1x2,d1y2,d1x3,d1y3,d1x4,d1y4,d2x1,d2y1,d2x2,d2y2,d2x3,d2y3,d2x4,d2y4,c1x,c1y,c2x,c2y;
//Inits
x1=argument0
y1=argument1
z1=argument2
x2=argument3 
y2=argument4 
z2=argument5 
texid=argument6
dir=argument7
wx=(x2-x1)/2 //width
wy=(y2-y1)/2 //width

surf_mid_x=x1+wx
surf_mid_y=y1+wy


lf=abs(argument8) //code for indentation effects
rf=abs(argument9)
rb=abs(argument10)
lb=abs(argument11)
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
mid_x=surf_mid_x+lengthdir_x(point_distance(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y)/(view_wview[0]/mean(z1,z2)),point_direction(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y))
mid_y=surf_mid_y+lengthdir_y(point_distance(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y)/(view_wview[0]/mean(z1,z2)),point_direction(global.mid_x,global.mid_y,surf_mid_x,surf_mid_y))


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
