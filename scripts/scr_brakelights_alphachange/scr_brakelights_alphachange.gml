
///////////////////////////////
// Brake lights alpha change //
///////////////////////////////

function scr_brakelights_alphachange()
{

	var is_changed=0;

	if keyboard_check(vk_down)
	{
		if !reverse_switch
		{
			is_changed=1
			if brake_alpha<1
				brake_alpha+=.25
		}	
	}


	if keyboard_check(vk_up)
	{
		if reverse_switch
		{
			is_changed=1
			if brake_alpha<1
				brake_alpha+=.25
		}
	}


	if !is_changed
	{
		if brake_alpha>0
			brake_alpha-=.25
	}


}