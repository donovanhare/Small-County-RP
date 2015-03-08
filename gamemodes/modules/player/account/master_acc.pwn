#include <YSI\y_hooks>

enum MA_Info
{
	SQLID,
	Name[32],
	Account01,
	Account02,
	Account03,
	Admin,
	Name01[32],
	Name02[32],
	Name03[32],
	RegisterIP[16],
	LatestIP[16]
};

new MasterAccount[MAX_PLAYERS][MA_Info];

stock ResetMasterAccountVariables(playerid)
{
	MasterAccount[playerid][SQLID] = 0;
	MasterAccount[playerid][Account01] = 0;
	MasterAccount[playerid][Account02] = 0;
	MasterAccount[playerid][Account03] = 0;
	MasterAccount[playerid][Admin] = 0;
	return 1;
}

hook OnPlayerConnect(playerid)
{
    ResetMasterAccountVariables(playerid);
}