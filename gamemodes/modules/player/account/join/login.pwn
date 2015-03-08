#include <YSI\y_hooks>


hook PlayerConnected(playerid)
{
	if(IsPlayerConnected(playerid))
	{
		new query[400];
		mysql_format(SQL_CONNECTION, query, sizeof(query), "SELECT SQLID FROM `MasterAccounts` WHERE MA_Name = '%e' LIMIT 1", GetDatabaseName(playerid));
	    mysql_tquery(SQL_CONNECTION, query, "ShowPlayerLogin", "i", playerid);
	    InfoBoxForPlayer(playerid, "== ~y~[Small County Roleplay]~w~ ==~n~Welcome to Small County Roleplay!");
	}

	return 1;
}