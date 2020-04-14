//draw shadow according to z height and zfloor
draw_sprite_ext(s_greenblock_shadow,image_index,x+lengthdir_x(zfloor,-global.z-270),y+lengthdir_y(zfloor,-global.z-270),1,1,-global.z,c_white,1);
///draw 3d
scr_draw_sprite_3d_z();
//depth
scr_depth_3d_z();