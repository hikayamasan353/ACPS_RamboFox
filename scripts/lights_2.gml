var col,dir,dis,alpha,angl,isd;
dis=40
dir=point_direction(x,y,x+lengthdir_x(-500,image_angle),y+lengthdir_y(-500,image_angle))
col=collision_line_ext(x,y,dir,dis)
alpha=(40-col)/40
angl=image_angle
angl=scr_return90s(angl)
isd=point_distance(x,y,x+lengthdir_x(col,dir),y+lengthdir_y(col,dir))/10
if col<dis-1
{
if !keyboard_check(vk_up)
{
draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle)-global.surfacex,y+lengthdir_y(-col,image_angle)-global.surfacey,isd/5,1+isd/5,image_angle,light_color,alpha-light_alpha)
if keyboard_check(vk_down)
draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle)-global.surfacex,y+lengthdir_y(-col,image_angle)-global.surfacey,isd/5,1+isd/5,image_angle,light_color,alpha-light_alpha)
}
else
{
draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle)-global.surfacex,y+lengthdir_y(-col,image_angle)-global.surfacey,isd/5,1+isd/5,image_angle,c_red,alpha-light_alpha)
draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle)-global.surfacex,y+lengthdir_y(-col,image_angle)-global.surfacey,isd/5,1+isd/5,image_angle,c_red,alpha-light_alpha)
}
}