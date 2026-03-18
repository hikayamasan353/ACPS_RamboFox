var col,dir,dis,alpha,angl,isd;

draw_set_blend_mode(bm_add)

dis=40
dir=point_direction(x,y,x+lengthdir_x(-500,image_angle),y+lengthdir_y(-500,image_angle))
//col=collision_line_ext(x,y,dir,dis-60)
col=scr_collision_line_ext(x,y,dir,dis,obj_border)
alpha=(40-col)/40
angl=image_angle
angl=scr_return90s(angl)
isd=point_distance(x,y,x+lengthdir_x(col,dir),y+lengthdir_y(col,dir))/10
//if !keyboard_check(vk_up){
//if global.light=c_black
//draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-min(50,col),image_angle),y+lengthdir_y(-min(50,col),image_angle),.5,.5,image_angle,light_color,.1)
//}else{
//draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-min(20,col),image_angle),y+lengthdir_y(-min(20,col),image_angle),1,1,image_angle,c_red,.3)
//}
draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle),y+lengthdir_y(-col,image_angle),isd/5,1+isd/5,image_angle,light_color,max(0,alpha-light_alpha))

/*
if col<dis-1
{
if reverse_switch=1
//if !keyboard_check(vk_up)/*
{
if keyboard_check(vk_up)
draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle),y+lengthdir_y(-col,image_angle),isd/5,1+isd/5,image_angle,light_color,max(0,alpha-light_alpha))
if keyboard_check(vk_down)
draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle),y+lengthdir_y(-col,image_angle),isd/5,1+isd/5,image_angle,c_red,max(0,alpha-light_alpha))
}
if keyboard_check(vk_up)
if reverse_switch=0
{

draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle),y+lengthdir_y(-col,image_angle),isd/5,1+isd/5,image_angle,c_red,max(0,alpha-light_alpha))

draw_sprite_ext(spr_reflection,0,x+lengthdir_x(-col,image_angle),y+lengthdir_y(-col,image_angle),isd/5,1+isd/5,image_angle,c_red,max(0,alpha-light_alpha))
}
}
*/
draw_set_blend_mode(bm_normal)
