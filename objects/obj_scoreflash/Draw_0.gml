image_xscale+=.05

image_alpha-=.01
draw_set_alpha(image_alpha)
action_font(font1, 1);
action_color(65535);
action_draw_text_transformed(""+string(score1), __view_get( e__VW.XView, 0 )+200, __view_get( e__VW.YView, 0 )+25, image_xscale, 1, 0);
draw_set_color(color)
action_draw_text_transformed(""+string(score_type), __view_get( e__VW.XView, 0 )+200, __view_get( e__VW.YView, 0 )+35, image_xscale, 1, 0);
draw_set_alpha(1)
