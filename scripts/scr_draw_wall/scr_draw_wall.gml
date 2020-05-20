/// @description scr_draw_wall(sprite, image_index, z, xscale, yscale, 3D angle, 2D Rotation, xtilt, ytilt, depth, colour, alpha)
/// @param  sprite
/// @param  image_index
/// @param  z
/// @param  xscale
/// @param  yscale
/// @param  3D angle
/// @param  2D Rotation
/// @param  xtilt
/// @param  ytilt
/// @param  depth room_height for floor
/// @param  colour
/// @param  alpha

//check if sprite is wider or higher
if sprite_get_width(argument0) >= sprite_get_width(argument0) then largestMeasurment = sprite_get_width(argument0)
else
largestMeasurment = sprite_get_height(argument0)

//check if in view
if distance_to_point( o_player.x,o_player.y) < (camera_get_view_width(view_camera[view_current])) + (largestMeasurment) + (argument1 * argument7) {

	//set layer number to start, and stop from animating
	//image_speed = 0
	layerNum = 0
	
	//set direction for the top of view
	d= argument5 - (camera_get_view_angle(view_camera[view_current])+90)
	
	//set x and y tilts
	xtilt = argument7
	ytilt = argument8
	
	//set the z height offset
	z = argument2
	
	blah = argument6
	
	xscale = argument3
	yscale = argument4

	iw = (sprite_get_width(argument0))
	ih = (sprite_get_height(argument0))
	//ih = argument8

	
	//reverse-clockwise
	x4 = x - lengthdir_x(iw/2,argument5)	
	y4 = y - lengthdir_y(iw/2,argument5)
	x3 = x + lengthdir_x(iw/2,argument5)
	y3 = y + lengthdir_y(iw/2,argument5)
		
		//top corners
	x2 = x3 - (lengthdir_x(ih,d - argument5)) * ytilt * yscale
	y2 = y3 - (lengthdir_y(ih,d - argument5)) * ytilt * yscale
	x1 = x4 - (lengthdir_x(ih,d - argument5)) * ytilt * yscale
	y1 = y4 - (lengthdir_y(ih,d - argument5)) * ytilt * yscale


	draw_set_colour(argument10)
	draw_sprite_pos(argument0,argument1, x1, y1, x2, y2, x3, y3, x4, y4, argument11)
	
	//wireframes
	if debug_mode = 1 {
		draw_point_colour(x,y,c_red)
		draw_point_colour(x - lengthdir_x(ih,d - argument5)	,y - lengthdir_y(ih,d - argument5),c_red)
		draw_line_colour(x3,y3,x4,y4,c_black,c_black)
		draw_line_colour(x4,y4,x1,y1,c_black,c_red)
		draw_line_colour(x3,y3,x2,y2,c_black,c_red)
		draw_line_colour(x1,y1,x2,y2,c_red,c_red)
	}

	asdf = lengthdir_y(argument9, d)
};