//get the lengthdir x & y
/*
THIS IS MEANT FOR NON-STATIC OBJECTS THAT DONT MOVE ALONG THE Z AXIS
NOT MEANT FOR PLAYER/ENEMIES AND STATIC OBJECTS!!!!!!!!!!
NOTE global.z-90 otherwise everything will go to the right
*/
x_axis = lengthdir_x(1,global.z-90)
y_axis = lengthdir_y(1,global.z-90)
//draw sprite 3d relative to z axis
for (var i= 0; i<image_number; i+=.3)
{
    draw_sprite_ext(sprite_index,i,x+((i*global.CamYScaleOffset)*x_axis),y-((i*global.CamYScaleOffset)*y_axis),image_xscale,image_yscale,image_angle,c_white,1);
}

//set image speed
image_speed = 0;