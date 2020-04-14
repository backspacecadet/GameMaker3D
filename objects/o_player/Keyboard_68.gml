///move right
//update instright
instright = noone;
//instance in path
instright = (instance_place(x+lengthdir_x(spd,-global.z),y+lengthdir_y(spd,-global.z),o_block_par))
if (!instright) or (instright.z <= z)
{
	//move right according to z
	x += lengthdir_x(spd,-global.z)
	y += lengthdir_y(spd,-global.z)
}
image_xscale = 1;