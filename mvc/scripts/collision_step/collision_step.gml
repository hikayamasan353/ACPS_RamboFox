if(!place_meeting(x,y,other)) exit;
var g;
g=0;
if(id>other.id)
{
    dir=point_direction(x,y,other.x,other.y);
    force=((lengthdir_x(1,dir)*hspeed)+(lengthdir_y(1,dir)*vspeed))*mass;
    with(other)
    {
      dir=point_direction(x,y,other.x,other.y);
      force=((lengthdir_x(1,dir)*hspeed)+(lengthdir_y(1,dir)*vspeed))*mass;
      motion_add(dir,-(force+other.force)/mass);
    }
    motion_add(dir,-(force+other.force)/mass);
    while(place_meeting(x,y,other) and g<100)
    {
      x-=lengthdir_x(1/mass,dir);
      y-=lengthdir_y(1/mass,dir);
      g+=1;
      with(other)
      {
        x-=lengthdir_x(1/mass,dir);
        y-=lengthdir_y(1/mass,dir);
      }
    }
}
