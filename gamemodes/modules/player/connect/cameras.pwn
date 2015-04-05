
forward Login_Camera(playerid);
public Login_Camera(playerid)
{
	TogglePlayerSpectating(playerid, 1);
	SetPlayerInterior(playerid, 0);
	SetPlayerVirtualWorld(playerid, 1000);
	Camera_1(playerid);
	return 1;
}


forward Camera_1(playerid);
public Camera_1(playerid)
{
	if(!LoggedIn[playerid])
	{
		InterpolateCameraPos(playerid, -195.276611, 1086.453613, 274.309112, -191.671737, 1088.624755, 102.591979, SECONDS(60), 1);
		InterpolateCameraLookAt(playerid, -195.273529, 1086.802246, 270.324340, -191.661849, 1089.016845, 98.611251, SECONDS(60), 1);
		SetTimer("Camera_2", SECONDS(60), 0);	
	}
	return 1;
}

forward Camera_2(playerid);
public Camera_2(playerid)
{
	if(!LoggedIn[playerid])
	{
		InterpolateCameraPos(playerid, -191.671737, 1088.624755, 102.591979, -162.491271, 1235.904174, 32.566741, SECONDS(60), 1);
		InterpolateCameraLookAt(playerid, -191.661849, 1089.016845, 98.611251, -164.412902, 1232.416015, 32.192291, SECONDS(60), 1);
		SetTimer("Camera_3", SECONDS(60), 0);
	}
	return 1;
}

forward Camera_3(playerid);
public Camera_3(playerid)
{
	if(!LoggedIn[playerid])
	{
		InterpolateCameraPos(playerid, -162.491271, 1235.904174, 32.566741, 190.346618, 1189.209960, 25.307855, SECONDS(60), 1);
		InterpolateCameraLookAt(playerid, -164.412902, 1232.416015, 32.192291, 187.398620, 1191.885620, 25.695003, SECONDS(60), 1);
		SetTimer("Camera_1", SECONDS(60), 0);
	}
	return 1;
}

/*		SetPlayerCameraLookAt(playerid, -193.2323, 1098.5872, 19.5938);
	    InterpolateCameraPos(playerid, -463.8441, 1098.2235, 23.3950, 176.2551, 1093.3696, 38.7697, 100000, CAMERA_MOVE);*/