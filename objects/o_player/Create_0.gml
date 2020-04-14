///variables
//create camera
instance_create_depth(x,y,0,o_cam);
//xy var
spd = 1.5; /*xy speed*/
//z var
z = 0; /*z pos*/
zfloor = 0; /*z pos of floor beneath you*/
zspeed = 3; /*speed of jump*/
zgrav = 0; /*changes, applies downforce*/
zjump = false; /*if in air*/
camrot_spd = 3; /*speed camera rotates*/
global.z = 0; /* direction cam is facing, global z controls the z axis in which objects are drawn globally */