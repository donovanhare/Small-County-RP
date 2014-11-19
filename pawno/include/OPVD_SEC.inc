/********************************************
 * OnPlayerVehicleDamagea!		            *
 * Credits: wups							*
 * This Include is for SECONDARY SCRIPTS    *
 ********************************************/

// include
#include <a_samp>


// defines
#if defined OPVD_SEC_INC
	#endinput
#endif
#define OPVD_SEC_INC


stock OPVD_SetVehicleHealthEx(vehicleid,Float:health)
	return CallRemoteFunction("OPVD_SetVehicleHealth","if",vehicleid,health);
#define SetVehicleHealth OPVD_SetVehicleHealthEx


stock OPVD_RepairVehicleEx(vehicleid)
	return CallRemoteFunction("OPVD_RepairVehicle","i",vehicleid);
#define RepairVehicle OPVD_RepairVehicleEx
	
	
// end