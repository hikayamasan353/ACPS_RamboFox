if point_distance(x,y,obj_player1_car_old.x,obj_player1_car_old.y)<300
{
surface_set_target(global.lightSurface);

draw_set_blend_mode(bm_add);
//image_blend=make_color(128,255,255)
image_blend=make_colour_rgb(128,255,255);
draw_sprite_ext(spr_light,image_index,x-global.surfacex,y-global.surfacey,1,1,0,image_blend,1);
draw_set_blend_mode(bm_normal);

surface_reset_target();
}
