///update 3d cam depth
//FOR STATIC SPRITES LIKE ENTITIES
//N
if (global.z >= 359 and global.z <= 360)
{
    z_axis = -y;
}
if (global.z >= 0 and global.z < 1)
{
    z_axis = -y;
}
//NE
if (global.z >= 1 and global.z < 89)
{
    z_axis = -y + x;
}

//E
if (global.z >= 89 and global.z < 91)
{
    z_axis = x;
}
//SE
if (global.z >= 91 and global.z < 179)
{
    z_axis = x + y;
}
//S
if (global.z >= 179 and global.z < 181)
{
    z_axis = y;
}
//SW
if (global.z >= 181 and global.z < 269)
{
    z_axis = y - x;
}
//W
if (global.z >= 269 and global.z < 271)
{
    z_axis = -x;
}
//NW
if (global.z >= 271 and global.z < 359)
{
    z_axis = -x - y;
}

//update depth WITH LOWERED Z WHEN ON TOP OF OBJECTS IF YOU DONT DO HALF CLIPPING WILL SOMETIMES OCCUR
depth = z_axis - z/2;

//numbers locked in at 0-360
if (global.z < 0)
{
	global.z = 360;	
}
if (global.z > 360)
{
	global.z = 0;	
}

//global cam angle
camera_set_view_angle(view_camera[0],global.z)