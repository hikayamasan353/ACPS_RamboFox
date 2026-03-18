factor += 0.03;
if (factor >= 1) instance_destroy();
else sc += 0.06;

surface_set_target(global.lightSurface);

draw_set_blend_mode(bm_add);

image_blend=make_color(255,255,128);
draw_sprite_ext(spr_light,-1,x-global.surfacex,y-global.surfacey,sc,sc,0,image_blend,1);

draw_set_blend_mode(bm_normal);

surface_reset_target();
