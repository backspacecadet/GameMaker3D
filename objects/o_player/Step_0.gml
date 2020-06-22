//par
event_inherited();
//z jump (when space pressed)
if (zjump == true) and (ledgegrab = false)
{
	z += zspeed /*z pos goes up*/
}
//if not ontop of block
if (!instance_place(x,y,o_block_par))
{
	zfloor = 0; /*zfloor is ground level*/

}
//if not on ground
if (!z <= zfloor) and (ledgegrab = false)
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

//decellerate spd if no keys are held
if !keyboard_check(ord("A")) && !keyboard_check(ord("D")) && !keyboard_check(ord("S")) && !keyboard_check(ord("W")) {
	spd -= spd/8
}

//cap spd to max_spd
if spd > max_spd {
	spd = max_spd
}

//ledge grab only when falling
//if falling
if (zgrav >= zspeed) and (z > 0)
{
	//if close to ledge
	//xy check
	if ((collision_circle(x,y,6,instance_nearest(x,y,o_block_par),false,false))
	//z check
	and (z >= instance_nearest(x,y,o_block_par).z - 16) and (z <= instance_nearest(x,y,o_block_par).z))
	{
		//grab ledge
		ledgegrab = true;
	}
	else
	{
		//not ledge grabbing
		ledgegrab = false;
	}
}


