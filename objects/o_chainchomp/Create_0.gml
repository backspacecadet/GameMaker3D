///set var
shadow = s_chainchomp_shadow;
z = 0;
state = 1; /*if charging or not*/
zspeed = 3; /*speed of jump*/
zgrav = 0; /*changes, applies downforce*/
zjump = false; /*if in air*/
zfloor = 0;
spd = .5;
def_spd = spd;
acc = 5;
charge_dir = point_direction(x,y,o_player.x,o_player.y);
post_rad = 120; /*post radius/how far away from post chomp can be*/
//set state alarm
alarm[0] = 720;