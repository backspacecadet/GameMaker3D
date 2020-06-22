///variables
//create camera
instance_create_depth(x,y,0,o_cam);
//xy var
max_spd = 4; /* maxiumum xy speed*/
spd = 0 /* true xy speed*/
//z var
z = 0; /*z pos*/
zfloor = 0; /*z pos of floor beneath you*/
zspeed = 6; /*speed of jump*/
zgrav = 0; /*changes, applies downforce*/
zjump = false; /*if in air*/
shadow = s_player_shadow;
ledgegrab = false;