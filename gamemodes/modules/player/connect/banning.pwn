#include <YSI\y_hooks>

hook OnPlayerConnect(playerid)
{
	IP_Lookup(playerid);
	Account_Lookup(playerid);
}


IP_Lookup(playerid)
{
	new query[128], ip[18];
	GetPlayerIp(playerid, ip, sizeof(ip));
	mysql_format(SQL_CONNECTION, query, sizeof(query), "SELECT NULL FROM Bans WHERE IP = '%s' LIMIT 1", ip);//OR MasterAccount = %d- , MasterAccount[playerid][SQLID]
	mysql_tquery(SQL_CONNECTION, query, "Lookup_Result", "d", playerid);
	return 1;
}

Account_Lookup(playerid)
{
	new query[128];
	mysql_format(SQL_CONNECTION, query, sizeof(query), "SELECT NULL FROM Bans WHERE A_ID = %d LIMIT 1", Character[playerid][ID]);//OR MasterAccount = %d- , MasterAccount[playerid][SQLID]
	mysql_tquery(SQL_CONNECTION, query, "Lookup_Result", "d", playerid);
	return 1;
}

forward Lookup_Result(playerid);
public Lookup_Result(playerid)
{
    if(cache_num_rows())
    {
        SendClientMessage(playerid, COLOR_WHITE, "You are banned from the server.");
        Dialog_Show(playerid, NONE, DIALOG_STYLE_MSGBOX, "Information", "You are banned from the server.", "Close", "");
	    KickPlayer(playerid);
	    return 0;
	}
	return 1;
}

/*
IssueBan(playerid, adminname[], reason[])
{
	new query[256], ip[18];
	GetPlayerIp(playerid, ip, 18);
	
    mysql_format(SQL_CONNECTION, query, sizeof(query), "INSERT INTO Bans (CharacterName, IP, SQLID, Account, Timestamp, BannedBy, Reason) VALUES('%s', '%s', %d, %d, %d, '%s', '%e')", GetDatabaseName(playerid), ip, PlayerInfo[playerid][SQLID], MasterAccount[playerid][SQLID], gettime(), adminname, reason);
	mysql_tquery(SQL_CONNECTION, query);
	KickPlayer(playerid);
	return 1;
}
*/