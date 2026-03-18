if reverse_switch=0
if drive_speed<drive_topspeed
{
drive_speed+=drive_peddlespeed}

if reverse_switch=1
if reverse_var>0
{reverse_var-=reverse_peddlespeed*reverse_brakemultiplier}
