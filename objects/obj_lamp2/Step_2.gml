if subimg >= 29
subimg = 0;
else
subimg += 1;

surface_set_target(global.lightSurface);

draw_set_blend_mode(bm_add);
image_blend=make_color(255,255,128)
draw_sprite_ext(spr_light2,subimg ,x-global.surfacex,y-global.surfacey,1,1,0,image_blend,1);
draw_set_blend_mode(bm_normal);

surface_reset_target();


