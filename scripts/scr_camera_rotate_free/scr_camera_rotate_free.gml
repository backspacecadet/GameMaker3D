//move camera analogue
if cam_ang_tar >0 then cam_ang_tar += (0.01 - cam_ang_tar)/10
if cam_ang_tar <0 then cam_ang_tar += (0.01 - cam_ang_tar)/10

if keyboard_check(ord("Q")){
	if cam_ang_tar >-1{
		cam_ang_tar -= camrot_spd
	}
	
}
if keyboard_check(ord("E")){
	if cam_ang_tar <1{
		cam_ang_tar += camrot_spd
	}

}

//stop camera moving at small ammounts
if cam_ang_tar >= -.01 && cam_ang_tar <= .01{
	cam_ang_tar = 0
}

//set camera to cam_ang_tar
global.z += cam_ang_tar;