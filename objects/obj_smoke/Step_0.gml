image_angle+=rotate_speed
if image_alpha<.5
if add_alpha=1
{image_alpha+=.1}

if add_alpha=0
{image_alpha-=.01}

if image_alpha<0
{instance_destroy()}
