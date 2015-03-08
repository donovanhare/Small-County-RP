#include <YSI\y_hooks>

hook OnPlayerConnect(playerid)
{
    Reset_PlayerInfo(playerid);
}

hook OnPlayerConnect(playerid)
{
    Reset_PlayerInfo(playerid);
}

hook Reset_PlayerInfo(playerid)
{
	PlayerInfo[playerid][SQLID] = 0;
	PlayerInfo[playerid][LoggedIn] = 0;
	PlayerInfo[playerid][LoginAttempts] = 0;
	PlayerInfo[playerid][Tutorial] = 0;
	PlayerInfo[playerid][Level] = 0;
	PlayerInfo[playerid][XP] = 0;
	PlayerInfo[playerid][Cash] = 0;
	PlayerInfo[playerid][AdminDuty] = 0;
	PlayerInfo[playerid][Skin] = 0;
	PlayerInfo[playerid][PosX] = 0;
	PlayerInfo[playerid][PosY] = 0;
	PlayerInfo[playerid][PosZ] = 0;
	PlayerInfo[playerid][VWorld] = 0;
	PlayerInfo[playerid][Interior] = 0;
	PlayerInfo[playerid][Age] = 0;
	PlayerInfo[playerid][Gender] = 0;
	PlayerInfo[playerid][Kicks] = 0;
	PlayerInfo[playerid][Muted] = 0;
	PlayerInfo[playerid][Faction] = 0;
	PlayerInfo[playerid][Rank] = 0;
	PlayerInfo[playerid][Job] = 0;
	PlayerInfo[playerid][House] = 0;
	PlayerInfo[playerid][Business_1] = 0;
	PlayerInfo[playerid][Business_2] = 0;
	PlayerInfo[playerid][Health] = 0;
	PlayerInfo[playerid][Armour] = 0;
	PlayerInfo[playerid][bEntered] = 0;
	PlayerInfo[playerid][hEntered] = 0;
	PlayerInfo[playerid][TotalVehicles] = 0;
	PlayerInfo[playerid][Bank] = 0;
	PlayerInfo[playerid][Dealership] = 0;
	PlayerInfo[playerid][RegisterIP] = 0;
	PlayerInfo[playerid][LatestIP] = 0;
	PlayerInfo[playerid][NewID] = 0;
	PlayerInfo[playerid][NewVehicle] = 0;
	PlayerInfo[playerid][ExemptIP] = 0;
    PlayerInfo[playerid][TotalTimePlayed] = 0;
    PlayerInfo[playerid][OnlinePeriod] = 0;
 	PlayerInfo[playerid][IsSpec] = -1;
 	PlayerInfo[playerid][QuizProgress] = 0;
 	PlayerInfo[playerid][ClothesSelection] = 0;
 	PlayerInfo[playerid][Payday] = 0;
 	PlayerInfo[playerid][LastOnline] = 0;
 	PlayerInfo[playerid][DeleteingObject] = 0;
 	PlayerInfo[playerid][TruckingCompleted] = 0;
 	PlayerInfo[playerid][TruckCoolDown] = 0;
 	PlayerInfo[playerid][InHospital] = 0;
  	PlayerInfo[playerid][MovableObject] = 0;
  	PlayerInfo[playerid][FactionOffer] = 0;
  	PlayerInfo[playerid][Cuffed] = 0;
  	PlayerInfo[playerid][Jail] = 0;
  	PlayerInfo[playerid][PNC] = 0;
  	PlayerInfo[playerid][Duty] = 0;
  	PlayerInfo[playerid][Uniform] = 0;
	return 1;
}