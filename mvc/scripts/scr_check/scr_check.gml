// Code originally by Slayer JoJo, modified by RamboFox
// This returns the distance in degrees between two angles, while showing the angle direction diference
// such as anti-clockwise and clockwise (-20 or just 20 for example)
// Example: If angle0 is 350 and angle1 is 0, this would return 10, 
// the distance between them 
// argument0 checks whether or not to return the "abs" of result
// argument1 is angle 1 and argument2 is angle 2 
var cw,dd,ss,tt,aa,rr,result;
ss=argument1;tt=argument2;cw=ss-tt;
if(cw=0)then{result=0;}if(cw<0)then{result=-1;
if(cw>-180)then{result=1;}}else{result=1;if(cw<180)then{result=-1;}}
aa=result;dd=abs(tt-ss);if(dd>180)then{result=360-dd;}else{result=dd;}
rr=result{if aa=1{rr=-result;}}if argument0=1{rr=abs(rr)}return rr;