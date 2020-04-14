///move left
//update instleft
instleft = noone;
//instance in path
instleft = (instance_place(x+lengthdir_x(spd,-global.z-180),y+lengthdir_y(spd,-global.z-180),o_block_par))
if (!instleft) or (instleft.z <= z)
{
	//move left according to z
	x += lengthdir_x(spd,-global.z-180)
	y += lengthdir_y(spd,-global.z-180)
}
image_xscale = -1;