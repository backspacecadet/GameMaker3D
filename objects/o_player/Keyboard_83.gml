///move down
//update instdown
instdown = noone;
//instance in path
instdown = (instance_place(x+lengthdir_x(spd,-global.z-90),y+lengthdir_y(spd,-global.z-90),o_block_par))
if (!instdown) or (instdown.z <= z)
{
	//move down according to z
	x += lengthdir_x(spd,-global.z-90)
	y += lengthdir_y(spd,-global.z-90)
}