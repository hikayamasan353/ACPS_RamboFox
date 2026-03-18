if alpha=1
{image_alpha-=.1}
if image_alpha<0
{instance_destroy()}
var __b__;
__b__ = action_if_variable(speed, .25, 1);
if __b__
{
alpha=1
}
