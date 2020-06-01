///move up

//accelerated spd var
spd += (max_spd - spd)/16
//update instup
instup = noone;
//instance in path
instup = (instance_place(x+lengthdir_x(spd,-global.z-270),y+lengthdir_y(spd,-global.z-270),o_block_par))
if (!instup) or (instup.z <= z)
{
	//move up according to z
	x += lengthdir_x(spd,-global.z-270)
	y += lengthdir_y(spd,-global.z-270)
}