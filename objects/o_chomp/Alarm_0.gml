///change state
if (state = 1)
{
	state = 2;
	alarm[0] = 60;
	charge_dir = point_direction(x,y,o_player.x,o_player.y);
}
else
{
	state = 1;
	alarm[0] = 500;
}