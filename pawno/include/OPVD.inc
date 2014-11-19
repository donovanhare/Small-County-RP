
/********************************************
 * OnPlayerVehicleDamagea! V1.0	            *
 * Credits: wups			    			*
 ********************************************/

// include

#include <a_samp>


// defines
#if defined OPVD_INC
	#endinput
#endif
#define OPVD_INC

forward OnPlayerVehicleDamagea(playerid,vehicleid,Float:Damagea);

static 
		Float:OPVD_VehHealth[MAX_VEHICLES] = {1000.0, 1000.0,...},
		bool:OPVD_VehUpd[MAX_VEHICLES]={false,false,...},
		bool:OPVD_OPUP,
		bool:OPVD_OPSC;
		
		
public OnPlayerUpdate(playerid)
{
	static		PL_VehID;
	PL_VehID = GetPlayerVehicleID(playerid);
	if(PL_VehID)
	{
		static		Float:PL_VehHP;
		GetVehicleHealth(PL_VehID,PL_VehHP);
		if(OPVD_VehUpd[PL_VehID])
				OPVD_VehUpd[PL_VehID]=false;
		else
		{
			if(PL_VehHP != OPVD_VehHealth[PL_VehID] && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
					CallLocalFunction("OnPlayerVehicleDamagea","iif",playerid,PL_VehID,(OPVD_VehHealth[PL_VehID]-PL_VehHP));
		}
		OPVD_VehHealth[PL_VehID]=PL_VehHP;
	}
	
	return (OPVD_OPUP)?CallLocalFunction("OPVD_OnPlayerUpdate","i",playerid):1;
}

#if defined _ALS_OnPlayerUpdate
	#undef OnPlayerUpdate
#else
	#define _ALS_OnPlayerUpdate
#endif

#define OnPlayerUpdate OPVD_OnPlayerUpdate
forward OPVD_OnPlayerUpdate(playerid);
// OnPlayerStateChange
public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == PLAYER_STATE_DRIVER)
		OPVD_VehUpd[GetPlayerVehicleID(playerid)]=true;
	return (OPVD_OPSC)?CallLocalFunction("OPVD_OnPlayerStateChange","iii",playerid,newstate,oldstate):1;
}
#if defined _ALS_OnPlayerStateChange
	#undef OnPlayerStateChange
#else
	#define _ALS_OnPlayerStateChange
#endif
#define OnPlayerStateChange OPVD_OnPlayerStateChange

forward OPVD_OnPlayerStateChange(playerid,newstate, oldstate);

forward OPVD_SetVehicleHealth(vehicleid,Float:health);
public OPVD_SetVehicleHealth(vehicleid,Float:health)
{
	OPVD_VehUpd[vehicleid]=true;
	return SetVehicleHealth(vehicleid, health);
}

forward OPVD_RepairVehicle(vehicleid);
public OPVD_RepairVehicle(vehicleid)
{
	OPVD_VehUpd[vehicleid]=true;
	return RepairVehicle(vehicleid);
}
#define RepairVehicle OPVD_RepairVehicle
#define SetVehicleHealth OPVD_SetVehicleHealth


#if defined FILTERSCRIPT
	// OnFilterScriptInit
	public OnFilterScriptInit()
	{
		OPVD_OPUP = (funcidx("OPVD_OnPlayerUpdate") != -1);
		OPVD_OPSC = (funcidx("OPVD_OnPlayerStateChange") != -1);
		return (funcidx("OPVD_OnFilterScriptInit") != -1)?CallLocalFunction("OPVD_OnFilterScriptInit",""):1;
	}
	#if defined _ALS_OnFilterScriptInit
		#undef OnFilterScriptInit
	#else
		#define _ALS_OnFilterScriptInit
	#endif
	#define OnFilterScriptInit OPVD_OnFilterScriptInit
	forward OPVD_OnFilterScriptInit();
#else 
	// OnGameModeInit
	public OnGameModeInit()
	{
		OPVD_OPUP = (funcidx("OPVD_OnPlayerUpdate") != -1);
		OPVD_OPSC = (funcidx("OPVD_OnPlayerStateChange") != -1);
		return (funcidx("OPVD_OnGameModeInit") != -1)?CallLocalFunction("OPVD_OnGameModeInit",""):1;
	}
	#if defined _ALS_OnGameModeInit
		#undef OnGameModeInit
	#else
		#define _ALS_OnGameModeInit
	#endif
	#define OnGameModeInit OPVD_OnGameModeInit
	forward OPVD_OnGameModeInit();
#endif
// end
