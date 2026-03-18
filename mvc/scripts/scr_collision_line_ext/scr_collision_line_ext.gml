var cursolid,dir,maxlength,curlength,xx,yy;
xx=argument0
yy=argument1
dir=argument2
maxlength=argument3
cursolid=argument4
curlength=0
while curlength<maxlength and !collision_line(xx,yy,xx+lengthdir_x(curlength+10,dir),yy+lengthdir_y(curlength+10,dir),cursolid,true,true)
{curlength+=10}
if !(curlength>=maxlength){
while !collision_line(xx,yy,xx+lengthdir_x(curlength+1,dir),yy+lengthdir_y(curlength+1,dir),cursolid,true,true){
curlength+=1
}
}
return curlength;