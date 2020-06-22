///jump on z
//if on ground
if (z <= zfloor) or (ledgegrab = true)
{
	zjump = true; /*you are now in the air*/
	zgrav = 0;
	ledgegrab = false;
}