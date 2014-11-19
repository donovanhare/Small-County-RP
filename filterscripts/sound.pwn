#include <a_samp>

#define FILTERSCRIPT

#define TEXT 0xFFFFC1FF

new Menu:overview;
new Menu:music;
new Menu:bleeps;
new Menu:soundfxa;
new Menu:soundfxb;
new Menu:soundfxc;



#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Sound Preview Filterscript by Menace");
	print("--------------------------------------\n");
	
	SendClientMessageToAll(TEXT,"The Sound Preview filterscript has been loaded. /sounds to begin.");
	
	overview = CreateMenu("Sounds", 2, 200.0, 100.0, 150.0, 150.0);
	AddMenuItem(overview, 0, "Music");
	AddMenuItem(overview, 0, "Bleeps");
	AddMenuItem(overview, 0, "SoundFX Page 1");
	AddMenuItem(overview, 0, "SoundFX Page 2");
	AddMenuItem(overview, 0, "SoundFX Page 3");
	
	music = CreateMenu("Music", 2, 200.0, 100.0, 150.0, 150.0);
	AddMenuItem(music, 0, "Track 1");
	AddMenuItem(music, 0, "Track 2");
	AddMenuItem(music, 0, "Track 3");
	AddMenuItem(music, 0, "Track 4");
	AddMenuItem(music, 0, "Track 5");
	AddMenuItem(music, 0, "Track 6");
	AddMenuItem(music, 0, "Track 7");
	
	bleeps = CreateMenu("Bleeps", 2, 200.0, 100.0, 150.0, 150.0);
	AddMenuItem(bleeps, 0, "Ammunation Buy Weapon");
	AddMenuItem(bleeps, 0, "Ammunation Denied Weapon");
	AddMenuItem(bleeps, 0, "Shop Buy");
	AddMenuItem(bleeps, 0, "Shop Buy Denied");
	AddMenuItem(bleeps, 0, "Race Countdown");
	AddMenuItem(bleeps, 0, "Race Sound Go");
	AddMenuItem(bleeps, 0, "Buy Car Mod");
	AddMenuItem(bleeps, 0, "Property Purchased");
	AddMenuItem(bleeps, 0, "Standard Pickup");
	AddMenuItem(bleeps, 0, "Checkpoint Amber");
	AddMenuItem(bleeps, 0, "Checkpoint Green");
	AddMenuItem(bleeps, 0, "Checkpoint Red");
	
	soundfxa = CreateMenu("SoundFX Page 1", 2, 200.0, 100.0, 150.0, 150.0);
	AddMenuItem(soundfxa, 0, "Metal Falls");
	AddMenuItem(soundfxa, 0, "Car Hood Collision");
	AddMenuItem(soundfxa, 0, "Crane Moves");
	AddMenuItem(soundfxa, 0, "Crane Stops Moving");
	AddMenuItem(soundfxa, 0, "Exit from Crane");
	AddMenuItem(soundfxa, 0, "Wheel of Fortune Clacker");
	AddMenuItem(soundfxa, 0, "Shutter Door Start");
	AddMenuItem(soundfxa, 0, "Shutter Door Stop");
	AddMenuItem(soundfxa, 0, "Parachute Opens");
	AddMenuItem(soundfxa, 0, "Checkpoint");
	AddMenuItem(soundfxa, 0, "Select Sound");
	AddMenuItem(soundfxa, 0, "Back Sound");

	soundfxb = CreateMenu("SoundFX Page 2", 2, 200.0, 100.0, 150.0, 150.0);
	AddMenuItem(soundfxb, 0, "Insufficient Funds Sound");
	AddMenuItem(soundfxb, 0, "Hit Wooden Surface");
	AddMenuItem(soundfxb, 0, "Mesh Gate Opens");
	AddMenuItem(soundfxb, 0, "Mesh Gate Closes");
	AddMenuItem(soundfxb, 0, "Punch");
	AddMenuItem(soundfxb, 0, "Laying an object on a surface");
	AddMenuItem(soundfxb, 0, "Camera Shot");
	AddMenuItem(soundfxb, 0, "Respray");
	AddMenuItem(soundfxb, 0, "Baseball Bat Hit");
	AddMenuItem(soundfxb, 0, "Stamp");
	AddMenuItem(soundfxb, 0, "Car Collision from Front");
	AddMenuItem(soundfxb, 0, "Car Smashes into Wall");
	
	soundfxc = CreateMenu("SoundFX Page 3", 2, 200.0, 100.0, 150.0, 150.0);
	AddMenuItem(soundfxc, 0, "Bell Rings");
	AddMenuItem(soundfxc, 0, "Bell stops ringing");
	AddMenuItem(soundfxc, 0, "Ped Hits Water");
	AddMenuItem(soundfxc, 0, "Restaurant Tray Collision");
	AddMenuItem(soundfxc, 0, "Car Horn");
	AddMenuItem(soundfxc, 0, "Magnet Attatches to Vehicle");
	AddMenuItem(soundfxc, 0, "Garage Door Opens");
	AddMenuItem(soundfxc, 0, "Garage Door Stops Opening");
	AddMenuItem(soundfxc, 0, "Ped collapses");
	AddMenuItem(soundfxc, 0, "Shutter Door Slowly Opens");
	AddMenuItem(soundfxc, 0, "Puke up");
	AddMenuItem(soundfxc, 0, "Slap");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" Blank Gamemode by your name here");
	print("----------------------------------\n");
}

#endif


public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/sounds", cmdtext, true, 10) == 0)
	{
		ShowMenuForPlayer(overview,playerid);
		TogglePlayerControllable(playerid,0);
		SendClientMessage(playerid,TEXT,"Type /shelp for more information.");
		return 1;
	}
	
	if (strcmp("/stop", cmdtext, true, 10) == 0)
	{
		PlayerPlaySound(playerid,1063,0.0,0.0,0.0);
		return 1;
	}
	
	if (strcmp("/shelp", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,TEXT,"Use /sounds to bring up the sound overview menu.");
		SendClientMessage(playerid,TEXT,"Use /stop to stop a sound from playing.");
		SendClientMessage(playerid,TEXT,"Some SoundFX may require you to /stop them before previewing them.");
		SendClientMessage(playerid,TEXT,"Some Sound Clips may be too quiet to hear, or may not have sound at all.");
		SendClientMessage(playerid,TEXT,"This filterscript was created by [OTE]Menace.");
		return 1;
	}
	return 0;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
    new Menu:CurrentMenu = GetPlayerMenu(playerid);
    
    if(CurrentMenu == overview)
{
    switch(row)
    {
        case 0: // Music
        {
			ShowMenuForPlayer(music,playerid);
        }
        case 1: // Bleeps
        {
			ShowMenuForPlayer(bleeps,playerid);
        }
        case 2: // Sound Effects 1
        {
		ShowMenuForPlayer(soundfxa,playerid);
        }
        case 3: // Sound Effects 2
        {
            ShowMenuForPlayer(soundfxb,playerid);
        }
        case 4: // Sound Effects 3
        {
            ShowMenuForPlayer(soundfxc,playerid);
        }
    }
}

    if(CurrentMenu == music)
{
    switch(row)
    {
        case 0: 
        {
			ShowMenuForPlayer(music,playerid);
			PlayerPlaySound(playerid,1062,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_GOGO_TRACK_START (ID: 1062) (/stop to stop)");
        }
        case 1:
        {
			ShowMenuForPlayer(music,playerid);
			PlayerPlaySound(playerid,1068,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_DUAL_TRACK_START (ID: 1068) (/stop to stop)");
        }
        case 2: 
        {
			ShowMenuForPlayer(music,playerid);
			PlayerPlaySound(playerid,1076,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_BEE_TRACK_START (ID: 1076) (/stop to stop)");
        }
        case 3:
        {
			ShowMenuForPlayer(music,playerid);
			PlayerPlaySound(playerid,1097,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_AWARD_TRACK_START (ID: 1097) (/stop to stop)");
        }
        case 4:
        {
			ShowMenuForPlayer(music,playerid);
			PlayerPlaySound(playerid,1183,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_DRIVING_AWARD_TRACK_START (ID: 1183) (/stop to stop)");
        }
        case 5:
        {
			ShowMenuForPlayer(music,playerid);
			PlayerPlaySound(playerid,1185,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_BIKE_AWARD_TRACK_START (ID: 1185) (/stop to stop)");
        }
        case 6:
        {
			ShowMenuForPlayer(music,playerid);
			PlayerPlaySound(playerid,1187,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_PILOT_AWARD_TRACK_START (ID: 1187) (/stop to stop)");
        }
    }
}

    if(CurrentMenu == bleeps)
{
    switch(row)
    {
        case 0:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1052,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_AMMUNATION_BUY_WEAPON (ID: 1052) (/stop to stop)");
        }
        case 1:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1053,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_AMMUNATION_BUY_WEAPON_DENIED (ID: 1053) (/stop to stop)");
        }
        case 2:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1054,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_SHOP_BUY (ID: 1054) (/stop to stop)");
        }
        case 3:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1055,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_SHOP_BUY_DENIED (ID: 1055) (/stop to stop)");
        }
        case 4:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1056,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_RACE_321 (ID: 1056) (/stop to stop)");
        }
        case 5:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1057,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_RACE_GO (ID: 1057) (/stop to stop)");
        }
        case 6:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1133,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_BUY_CAR_MOD (ID: 1133) (/stop to stop)");
        }
        case 7:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1149,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_PROPERTY_PURCHASED (ID: 1149) (/stop to stop)");
        }
        case 8:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1150,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_PICKUP_STANDARD (ID: 1150) (/stop to stop)");
        }
        case 9:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1137,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CHECKPOINT_AMBER (ID: 1137) (/stop to stop)");
        }
        case 10:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1138,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CHECKPOINT_GREEN (ID: 1138) (/stop to stop)");
        }
        case 11:
        {
			ShowMenuForPlayer(bleeps,playerid);
			PlayerPlaySound(playerid,1139,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CHECKPOINT_RED (ID: 1139) (/stop to stop)");
        }
    }
}
    if(CurrentMenu == soundfxa)
{
    switch(row)
    {
        case 0:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1002,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CEILING_VENT_LAND (ID: 1002) (/stop to stop)");
        }
        case 1:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1009,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_BONNET_DENT (ID: 1009) (/stop to stop)");
        }
        case 2:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1020,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CRANE_MOVE_START (ID: 1020) (/stop to stop)");
        }
        case 3:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1055,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CRANE_MOVE_STOP (ID: 1021) (/stop to stop)");
        }
        case 4:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1022,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CRANE_EXIT (ID: 1022) (/stop to stop)");
        }
        case 5:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1027,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_WHEEL_OF_FORTUNE_CLACKER (ID: 1027) (/stop to stop)");
        }
        case 6:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1035,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_SHUTTER_DOOR_START (ID: 1035) (/stop to stop)");
        }
        case 7:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1036,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_SHUTTER_DOOR_STOP (ID: 1036) (/stop to stop)");
        }
        case 8:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1039,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_PARACHUTE_OPEN (ID: 1039) (/stop to stop)");
        }
        case 9:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1058,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_PART_MISSION_COMPLETE (ID: 1058) (/stop to stop)");
        }
        case 10:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1083,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_ROULETTE_ADD_CASH (ID: 1083) (/stop to stop)");
        }
        case 11:
        {
			ShowMenuForPlayer(soundfxa,playerid);
			PlayerPlaySound(playerid,1084,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_ROULETTE_REMOVE_CASH (ID: 1084) (/stop to stop)");
        }
    }
}
    if(CurrentMenu == soundfxb)
{
    switch(row)
    {
        case 0:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1085,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_ROULETTE_NO_CASH (ID: 1085) (/stop to stop)");
        }
        case 1:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1095,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_BIKE_PACKER_CLUNK (ID: 1095) (/stop to stop)");
        }
        case 2:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1100,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_MESH_GATE_OPEN_START (ID: 1100) (/stop to stop)");
        }
        case 3:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1101,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_MESH_GATE_OPEN_STOP (ID: 1101) (/stop to stop)");
        }
        case 4:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1130,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_PUNCH_PED (ID: 1130) (/stop to stop)");
        }
        case 5:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1131,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_AMMUNATION_GUN_COLLISION (ID: 1131) (/stop to stop)");
        }
        case 6:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1132,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CAMERA_SHOT (ID: 1132) (/stop to stop)");
        }
        case 7:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1134,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_BUY_CAR_RESPRAY (ID: 1134) (/stop to stop)");
        }
        case 8:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1135,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_BASEBALL_BAT_HIT_PED (ID: 1135) (/stop to stop)");
        }
        case 9:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1136,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_STAMP_PED (ID: 1136) (/stop to stop)");
        }
        case 10:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1140,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CAR_SMASH_CAR (ID: 1140) (/stop to stop)");
        }
        case 11:
        {
			ShowMenuForPlayer(soundfxb,playerid);
			PlayerPlaySound(playerid,1141,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_CAR_SMASH_GATE (ID: 1141) (/stop to stop)");
        }
   }
}

    if(CurrentMenu == soundfxc)
{
    switch(row)
    {
        case 0:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1142,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_OTB_TRACK_START (ID: 1142) (/stop to stop)");
        }
        case 1:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1143,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_OTB_TRACK_STOP (ID: 1143) (/stop to stop)");
        }
        case 2:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1144,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_PED_HIT_WATER_SPLASH (ID: 1144) (/stop to stop)");
        }
        case 3:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1145,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_RESTAURANT_TRAY_COLLISION (ID: 1145) (/stop to stop)");
        }
        case 4:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1147,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_SWEETS_HORN (ID: 1147) (/stop to stop)");
        }
        case 5:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1148,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_MAGNET_VEHICLE_COLLISION (ID: 1148) (/stop to stop)");
        }
        case 6:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1153,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_GARAGE_DOOR_START (ID: 1153) (/stop to stop)");
        }
        case 7:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1154,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_GARAGE_DOOR_STOP (ID: 1154) (/stop to stop)");
        }
        case 8:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1163,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_PED_COLLAPSE (ID: 1163) (/stop to stop)");
        }
        case 9:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1165,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_SHUTTER_DOOR_SLOW_START (ID: 1165) (/stop to stop)");
        }
        case 10:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1169,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_RESTAURANT_CJ_PUKE (ID: 1169) (/stop to stop)");
        }
        case 11:
        {
			ShowMenuForPlayer(soundfxc,playerid);
			PlayerPlaySound(playerid,1190,0.0,0.0,0.0);
			SendClientMessage(playerid,TEXT,"Now playing: SOUND_SLAP (ID: 1190) (/stop to stop)");
        }
   }
}
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	TogglePlayerControllable(playerid,1);
	PlayerPlaySound(playerid,1063,0.0,0.0,0.0);
	return 1;
}

