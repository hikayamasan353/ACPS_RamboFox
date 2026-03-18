var __b__;
__b__ = action_if_number(obj_scoreflash, 1, 0);
if __b__
{
with (obj_scoreflash) {
action_kill_object();
}
}
__b__ = action_if_number(obj_points, 1, 0);
if __b__
{
with (obj_points) {
action_kill_object();
}
}
__b__ = action_if_number(obj_crash, 1, 0);
if __b__
{
with (obj_crash) {
action_kill_object();
}
}
global.global_score=0
