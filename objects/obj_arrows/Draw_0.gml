draw_sprite_ext(spr_arrow,1,x,y,1,1,direction,c_white,1)
draw_sprite_ext(spr_arrow,0,x,y,1,1,image_angle,c_white,1)
draw_text(x+50,y+50,string_hash_to_newline(string(scr_check(0,image_angle,direction))))
