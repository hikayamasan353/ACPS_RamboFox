image_speed=0
image_index=0
left=0
right=0
up=0
down=0

//////
collision_init(1);

if position_meeting(x+10,y-30,wall)
{up=1}
if position_meeting(x+10,y+78,wall)
{down=1}
if position_meeting(x-10,y+10,wall)
{left=1}
if position_meeting(x+78,y+10,wall)
{right=1}

action_set_alarm(1, 0);
