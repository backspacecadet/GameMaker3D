//move camera at 90 degree increments

if keyboard_check_pressed(ord("Q")){
	if global.z = cam_ang_tar {
		cam_ang_tar -= 45	
	}
}
if keyboard_check_pressed(ord("E")){
	if global.z = cam_ang_tar {
		cam_ang_tar += 45	
	}
}

//reset to 0 if over 360 and vice versa
if cam_ang_tar <= -45 {
	cam_ang_tar = 315;
	global.z = 360
}
if cam_ang_tar >= 405 {
	cam_ang_tar = 45;
	global.z = 0
}

//move global z to match target angle

if global.z > cam_ang_tar{
	global.z = global.z - 1.5
}
if global.z < cam_ang_tar{
	global.z = global.z + 1.5
}
///////////////////////////////

