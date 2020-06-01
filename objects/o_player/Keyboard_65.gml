///move left

//accelerated spd var
spd += (max_spd - spd)/16
//update instleft
instleft = noone;
//instance in path
instleft = (instance_place(x+lengthdir_x(spd,-global.z-180),y+lengthdir_y(spd,-global.z-180),o_block_par))
if (!instleft) or (instleft.z <= z)
{
	//move left according to z (slowed down to feel better with camera tilt)
	x += lengthdir_x(spd/(global.CamYScaleOffset/1.125),-global.z-180)
	y += lengthdir_y(spd/(global.CamYScaleOffset/1.125),-global.z-180)
}
image_xscale = -1;