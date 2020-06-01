///move right

//accelerated spd var
spd += (max_spd - spd)/16
//update instright
instright = noone;
//instance in path
instright = (instance_place(x+lengthdir_x(spd,-global.z),y+lengthdir_y(spd,-global.z),o_block_par))
if (!instright) or (instright.z <= z)
{
	//move right according to z (slowed down to feel better with camera tilt)
	x += lengthdir_x(spd/(global.CamYScaleOffset/1.125),-global.z)
	y += lengthdir_y(spd/(global.CamYScaleOffset/1.125),-global.z)
}
image_xscale = 1;