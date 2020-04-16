// Inherit the parent event
event_inherited();

//attack behavior
//state 1 (bouncing)
spd = def_spd;
if (state = 1)
{
//jump
z += zspeed /*z pos goes up*/
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
	//zjump = false; /*no longer in the air*/	
}

//move slowly toward player within radius of post
//x
if (point_in_circle(x + lengthdir_x(spd,point_direction(x,y,o_player.x,o_player.y)),y,o_chomp_post.x,o_chomp_post.y,post_rad))
{
x += lengthdir_x(spd,point_direction(x,y,o_player.x,o_player.y));
}
//y
if (point_in_circle(x,y + lengthdir_y(spd,point_direction(x,y,o_player.x,o_player.y)),o_chomp_post.x,o_chomp_post.y,post_rad))
{
y += lengthdir_y(spd,point_direction(x,y,o_player.x,o_player.y));
}

}


//state 2 (charging)
if (state = 2)
{
//freeze anim
image_index = 0;
//increase spd for change
spd += acc;
//x
if (point_in_circle(x + lengthdir_x(spd,charge_dir),y,o_chomp_post.x,o_chomp_post.y,post_rad))
{
x += lengthdir_x(spd,charge_dir);
}
//y
if (point_in_circle(x,y + lengthdir_y(spd,charge_dir),o_chomp_post.x,o_chomp_post.y,post_rad))
{
y += lengthdir_y(spd,charge_dir);
}

}