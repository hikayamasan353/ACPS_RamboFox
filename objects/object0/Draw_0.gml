var dir,dis,col,is_s,col2,dir2,mousex,mousey;
mousex=mouse_x
mousey=mouse_y
is_s=1
dis=1000
dir=point_direction(x,y,mousex,mousey)
col=collision_line_ext(x,y,dir,dis)
if col<dis{draw_set_color(c_red)
is_s=0}if col>=dis-1
{draw_set_color(c_green)is_s=1}
draw_circle(x,y,5,1)
draw_arrow(x,y,x+lengthdir_x(col+1,dir),y+lengthdir_y(col+1,dir),12)
draw_line_ext(x,y,x+lengthdir_x(col+1,dir),y+lengthdir_y(col+1,dir),20,draw_get_color(),c_black)
col2=col+1;dir2=dir;
if is_s=0 if point_distance(x,y,mousex,mousey)>col
{dis=point_distance(x,y,mousex,mousey)
dir=point_direction(mouse_x,mousey,x,y)
col=collision_line_ext(mousex,mousey,dir,dis)
draw_set_color(c_white)
draw_set_alpha(.5)
draw_line_ext(mousex,mousey,mousex+lengthdir_x(col+1,dir),mousey+lengthdir_y(col+1,dir),20,c_white,c_black)
draw_sprite_tiled_advanced
(sprite0
,0
,x+lengthdir_x(col2,dir2)
,y+lengthdir_y(col2,dir2)
,point_direction(x+lengthdir_x(col2,dir2),y+lengthdir_y(col2,dir2),mousex+lengthdir_x(col+1,dir),mousey+lengthdir_y(col+1,dir))
,point_distance(x+lengthdir_x(col2,dir2),y+lengthdir_y(col2,dir2),mousex+lengthdir_x(col+1,dir),mousey+lengthdir_y(col+1,dir))
,c_white,1)
}
draw_set_alpha(1)
draw_set_color(c_white)
draw_circle(mousex,mousey,5,1)
draw_text(0,0,string_hash_to_newline(string(fps)))
