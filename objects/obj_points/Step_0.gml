var oo;
if obj_player1_car.reverse_switch=0
if instance_number(obj_crash)=0
if abs(scr_check(0,obj_player1_car.image_angle,obj_player1_car.direction))/50>.2
{points+=10}
else
{global.global_score+=points

if instance_number(obj_scoreflash)>0
{with obj_scoreflash{instance_destroy()}}

oo=instance_create(0,0,obj_scoreflash)
oo.score1=points

if points<101
{oo.score_type="weak..."
oo.color=c_red}
if points>100 and points<201
{oo.score_type="good..."
oo.color=c_purple}
if points>200 and points<301
{oo.score_type="great!..."
oo.color=c_blue}
if points>300 and points<401
{oo.score_type="awsome!..."
oo.color=c_aqua}
if points>400 and points<501
{oo.score_type="wickid!!..."
oo.color=c_white}
if points>500 and points<601
{oo.score_type="sweet!!!..."
oo.color=c_white}
if points>600 and points<701
{oo.score_type="brilliant!!!!..."
oo.color=c_white}
if points>700 and points<801
{oo.score_type="FILF!!!!..."
oo.color=c_white}
if points>800
{oo.score_type="SUPER DK!!!!..."
oo.color=c_yellow}


instance_destroy()}
