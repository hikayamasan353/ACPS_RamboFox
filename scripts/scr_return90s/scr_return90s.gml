function scr_return90s(argument0) 
{
	var typ,ret;
	var val=argument0;

	if val<45
		ret=0;
	else if val>=315
		ret=0;

	else if ((val>=45)&&(val<135))
		ret=90;
	else if ((val>=135) && (val<225))
		ret=180;

	else if ((val>=225) && (val<315))
		ret=270;

	return ret;


}
