//draw_shadow
scr_draw_shadow();
//draw chain links
//link 1
draw_sprite_ext(s_chomp_chain,0,x+lengthdir_x(z*1,-global.z-270)+(lengthdir_x(abs(x - o_chomp_post.x)*.3,point_direction(x,y,o_chomp_post.x,o_chomp_post.y))),y+lengthdir_y(z*1,-global.z-270)+(lengthdir_y(abs(y - o_chomp_post.y)*.3,point_direction(x,y,o_chomp_post.x,o_chomp_post.y))),image_xscale,image_yscale,-global.z,c_white,1);
//link 2
draw_sprite_ext(s_chomp_chain,0,x+lengthdir_x(z*.6,-global.z-270)+(lengthdir_x(abs(x - o_chomp_post.x)*.6,point_direction(x,y,o_chomp_post.x,o_chomp_post.y))),y+lengthdir_y(z*.6,-global.z-270)+(lengthdir_y(abs(y - o_chomp_post.y)*.6,point_direction(x,y,o_chomp_post.x,o_chomp_post.y))),image_xscale,image_yscale,-global.z,c_white,1);
//link 3
draw_sprite_ext(s_chomp_chain,0,x+lengthdir_x(z*.3,-global.z-270)+(lengthdir_x(abs(x - o_chomp_post.x)*1,point_direction(x,y,o_chomp_post.x,o_chomp_post.y))),y+lengthdir_y(z*.3,-global.z-270)+(lengthdir_y(abs(y - o_chomp_post.y)*1,point_direction(x,y,o_chomp_post.x,o_chomp_post.y))),image_xscale,image_yscale,-global.z,c_white,1);

///draw 3d
scr_draw_sprite_3d_z();