//par
event_inherited();
//z jump (when space pressed)
if (zjump == true)
{
	z += zspeed /*z pos goes up*/
}
//if not ontop of block
if (!instance_place(x,y,o_block_par))
{
	zfloor = 0; /*zfloor is ground level*/

}
//if not on ground
if (!z <= zfloor)
{
	z -= zgrav; /*apply downforce on z pos*/
	zgrav += 0.2; /*grav gets stronger each step*/
}
//stop falling when you hit zfloor
if (z <= zfloor+1/*+1 for sticking glitch on ground*/)
{
	z = zfloor;	/*snap z pos to on ground*/
	zgrav = 0; /*stop applying downforce*/
	zjump = false; /*no longer in the air*/	
}