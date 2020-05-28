///update zfloor
instbelow = instance_place(x,y,o_block_par);
//platform
if !(instance_place(x,y,o_ramp_par))
{
zfloor = instbelow.z;
}
else
{
//ramp
zfloor = instbelow.z - (instbelow.x - x);
}