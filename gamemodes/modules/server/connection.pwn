//==============================================================================
//          -- > Database Information
//==============================================================================
#define SQL_HOST "127.0.0.1"
#define SQL_USER "USERNAME"
#define SQL_PASS "PASSWORD"
#define SQL_DB "DATABASE"


new SQL_CONNECTION;

forward MySQLConnect();
public MySQLConnect()
{
	SQL_CONNECTION = mysql_connect(SQL_HOST, SQL_USER, SQL_DB, SQL_PASS);
	mysql_log(LOG_ALL);
    if(mysql_errno(SQL_CONNECTION) == 0)
    {
		mysql_log(LOG_ERROR | LOG_WARNING | LOG_DEBUG);
		printf("------------------------------------------------------------------------------");
    	printf("[MYSQL]: Connection to `%s`@'%s' succesful!", SQL_DB, SQL_HOST);
		printf("------------------------------------------------------------------------------");
	}
	else
	{
		printf("------------------------------------------------------------------------------");
	    printf("[MYSQL]: ERROR: Connection to `%s`@'%s' failed!", SQL_DB, SQL_HOST);
		printf("------------------------------------------------------------------------------");
	}

	return 1;
}

public OnQueryError(errorid, error[], callback[], query[], connectionHandle)
{
	switch(errorid)
	{
		case CR_SERVER_GONE_ERROR:
		{
			printf("Lost connection to server, trying reconnect...");
			mysql_reconnect(connectionHandle);
		}
		case ER_SYNTAX_ERROR:
		{
			printf("[MYSQL]: SYNTAX ERROR: %s",query);
		}
	}
	new str[400];
	format(str, sizeof(str), "[MYSQL ERROR]: ID: %d", errorid);
	SendAdminsMessage(6, COLOR_RED, str);
	print(str);
	format(str, sizeof(str), "[MYSQL ERROR]: Error: %s", error);
	SendAdminsMessage(6, COLOR_RED, str);
	print(str);
	format(str, sizeof(str), "[MYSQL ERROR]: Query: %s", query);
	SendAdminsMessage(6, COLOR_RED, str);
	print(str);
	return 1;
}
