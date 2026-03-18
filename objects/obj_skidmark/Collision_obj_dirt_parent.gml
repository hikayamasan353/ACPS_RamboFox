image_blend=make_color_rgb(55,50,36)
if is_on=1
if collide=0
if has_smoked=0
{
collide=0
if random(3)=0
{
instance_create(x,y,obj_smoke)
}
}
