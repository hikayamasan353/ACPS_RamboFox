image_speed=0
image_index=0
left=0
right=0
up=0
down=0
if position_meeting(x+10,y-30,obj_dirt_thingo)
{up=1}
if position_meeting(x+10,y+78,obj_dirt_thingo)
{down=1}
if position_meeting(x-10,y+10,obj_dirt_thingo)
{left=1}
if position_meeting(x+78,y+10,obj_dirt_thingo)
{right=1}
action_set_alarm(1, 0);
