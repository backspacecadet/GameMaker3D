//get the lengthdir x & y
/*
THIS IS MEANT FOR STATIC OBJECTS THAT MOVE ALONG THE Z AXIS
NOT MEANT FOR PLATFORMS AND NON-STATIC OBJECTS!!!!!!!!!!
NOTE global.z-90 otherwise everything will go to the right
*/
x_axis = lengthdir_x(1,global.z-90)
y_axis = lengthdir_y(1,global.z-90)
//draw sprite 3d relative to z axis AND to the z position so it can JUMP
for (var i= 0; i<image_number; i+=.3)
{
    draw_sprite_ext(sprite_index,i,x+((i*global.CamYScaleOffset)*x_axis)+lengthdir_x(z,-global.z-270),y-((i*global.CamYScaleOffset)*y_axis)+lengthdir_y(z,-global.z-270),image_xscale,image_yscale,image_angle,c_white,1);
}

//set image speed
image_speed = 0;