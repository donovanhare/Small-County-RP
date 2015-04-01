//==============================================================================
//          -- > IP Logging
//==============================================================================
#define ACCOUNT_LOGIN                                                      			1
#define FAILED_ACCOUNT_LOGIN                                                        2


stock Log_IP(playerid, status)
{
	new ip[16], query[128];
	GetPlayerIp(playerid, ip, 16);
    mysql_format(SQL_CONNECTION, query, sizeof(query), "INSERT INTO Log_IP (IP, A_ID, Time, Status) VALUES('%e',%d,%d,%d)", ip, Account[playerid][SQLID], gettime(),status);
    mysql_tquery(SQL_CONNECTION, query);
	return 1;
}