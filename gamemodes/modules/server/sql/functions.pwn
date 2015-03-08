
forward MYSQL_Update_String(sqlid, table[], column[], str[]);
public MYSQL_Update_String(sqlid, table[], column[], str[])
{
	new query[280];
    mysql_format(SQL_CONNECTION, query, sizeof(query), "UPDATE `%e` SET `%e` = '%e' WHERE SQLID = %d LIMIT 1", table, column, str, sqlid);
	mysql_tquery(SQL_CONNECTION, query);
	return 1;
}

forward MYSQL_Update_Interger(sqlid, table[], column[], interger);
public MYSQL_Update_Interger(sqlid, table[], column[], interger)
{
	new query[280];
    mysql_format(SQL_CONNECTION, query, sizeof(query), "UPDATE `%e` SET `%e` = %d WHERE SQLID = %d LIMIT 1", table, column, interger, sqlid);
	mysql_tquery(SQL_CONNECTION, query);
	return 1;
}

forward MYSQL_Update_Float(sqlid, table[], column[], Float:interger);
public MYSQL_Update_Float(sqlid, table[], column[], Float:interger)
{
	new query[280];
    mysql_format(SQL_CONNECTION, query, sizeof(query), "UPDATE `%e` SET `%e` = %f WHERE SQLID = %d LIMIT 1", table, column, interger, sqlid);
	mysql_tquery(SQL_CONNECTION, query);
	return 1;
}