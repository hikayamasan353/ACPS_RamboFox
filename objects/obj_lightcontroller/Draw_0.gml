draw_set_blend_mode_ext(bm_dest_color,bm_zero)
draw_surface(global.lightSurface,global.surfacex,global.surfacey);
draw_set_blend_mode(bm_subtract)
draw_sprite_ext(spr_outlay,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,1)
draw_set_blend_mode(bm_normal)
