var val,typ,ret;
val=argument0

if val<45
{ret=0}
if val>315
{ret=0}

if val>46 and val<136
{ret=90}
if val>135 and val<225
{ret=180}

if val>225 and val<315
{ret=270}

return ret;