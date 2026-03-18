surface_set_target(global.lightSurface);

draw_set_blend_mode(bm_add);
image_blend=c_yellow
draw_sprite_ext(spr_glare,0,x-global.surfacex,y-global.surfacey,.3,.3,-point_direction(__view_get( e__VW.XView, 0 )+200,__view_get( e__VW.YView, 0 )+200,obj_player1_car_old.x,obj_player1_car_old.y)+random1,image_blend,1);
draw_sprite_ext(spr_sparkle,0,x-global.surfacex,y-global.surfacey,1.3,1.3,-point_direction(__view_get( e__VW.XView, 0 )+200,__view_get( e__VW.YView, 0 )+200,obj_player1_car_old.x,obj_player1_car_old.y)+random1,image_blend,1);

draw_sprite_ext(spr_reflection,image_index,x-global.surfacex,y-global.surfacey+24,2,3,90,image_blend,.4);
draw_sprite_ext(spr_reflection,image_index,x-global.surfacex,y-global.surfacey+24,2,3,270,image_blend,.4);
draw_set_blend_mode(bm_normal);
image_blend=c_white
surface_reset_target();

