var size,diff,ofset,xx2,yy2;
size=15*size_scale/1.5
diff=22
ofset=0
xx2=lengthdir_x(8,image_angle)
yy2=lengthdir_y(8,image_angle)

if back_l>2 and back_l<6
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,trans_rear_left,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
if back_l<3
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,sprite11,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
if back_l>6
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,frame_bl,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}


if back_r>2 and back_r<6
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,trans_rear_right,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
if back_r<3
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,sprite12,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
if back_r>6
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,frame_br,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}


if front_l>2 and front_l<6
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,trans_front_left,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
if front_l<3
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,sprite13,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
if front_l>6
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,frame_fl,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}


if front_r>2 and front_r<6
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,trans_front_right,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
if front_r<3
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,sprite14,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}
if front_r>6
{warp_final(xx2+x-size,yy2+y-size,-1,xx2+x+size,yy2+y+size,-1,frame_fr,image_angle-ofset,max(0,front_l/(diff-size)),max(0,front_r/(diff-size)),max(0,back_l/(diff-size)),max(0,back_r/(diff-size)))}