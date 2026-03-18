//global.top_goal=0
//global.bot_goal=0

if view_current=0
{draw_set_color(c_red)
draw_text(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+5,string_hash_to_newline(string(global.top_goal)))}

if view_current=1
{draw_set_color(c_blue)
draw_text(__view_get( e__VW.XView, 1 )+5,__view_get( e__VW.YView, 1 )+5,string_hash_to_newline(string(global.bot_goal)))}
