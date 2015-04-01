enum house
{
	SQLID,
	Name[32],
	Float:PosX,
	Float:PosY,
	Float:PosZ,
	Interior,
	World,
	Float:IntX,
	Float:IntY,
	Float:IntZ,
	Owner[MAX_PLAYER_NAME],
	Type,
	Price,
	Text3D:LabelID,
	PickupID,
	Locked,
	Safe
};

new Houses[MAX_HOUSES][house], Total_Houses_Created, houseid[MAX_PLAYERS];

Fetch_Houses()
{
	mysql_tquery(SQL_CONNECTION, "SELECT * FROM `Houses` ORDER BY SQLID ASC", "Load_Houses");
	return 1;
}

Fetch_House(id)
{
	new query[128];
	mysql_format(SQL_CONNECTION, query, sizeof(query), "SELECT * FROM `Houses` WHERE SQLID = %d LIMIT 1", Houses[id][SQLID]);
	mysql_tquery(SQL_CONNECTION, query, "Load_House", "d", id);
	return 1;
}

Remove_House(id)
{
	Total_Houses_Created --;
	DestroyDynamic3DTextLabel(Houses[id][LabelID]);
	DestroyDynamicPickup(Houses[id][PickupID]);
	return 1;
}

Reload_House(id)
{
	Remove_House(id);
	Fetch_House(id);
	return 1;
}


forward Load_Houses();
public Load_Houses()
{

	if(cache_num_rows())
    {
        for(new id = 1; id<cache_num_rows(); id++)
        {
			Houses[id][SQLID] = cache_get_field_content_int(id, "SQLID", SQL_CONNECTION);
	  		cache_get_field_content(id, "Name", Houses[id][Name], SQL_CONNECTION, 32);
			Houses[id][PosX] = cache_get_field_content_float(id, "PosX", SQL_CONNECTION);
			Houses[id][PosY] = cache_get_field_content_float(id, "PosY", SQL_CONNECTION);
			Houses[id][PosZ] = cache_get_field_content_float(id, "PosZ", SQL_CONNECTION);
			Houses[id][Interior] = cache_get_field_content_int(id, "Interior", SQL_CONNECTION);
			Houses[id][World] = cache_get_field_content_int(id, "World", SQL_CONNECTION);
			Houses[id][IntX] = cache_get_field_content_float(id, "IntX", SQL_CONNECTION);
			Houses[id][IntY] = cache_get_field_content_float(id, "IntY", SQL_CONNECTION);
			Houses[id][IntZ] = cache_get_field_content_float(id, "IntZ", SQL_CONNECTION);
			Houses[id][Owner] = cache_get_field_content_int(id, "Owner", SQL_CONNECTION);
			Houses[id][Price] = cache_get_field_content_int(id, "Price", SQL_CONNECTION);
			Houses[id][Safe] = cache_get_field_content_int(id, "Safe", SQL_CONNECTION);

	        Total_Houses_Created++;
	        Create_House(id);

		}

	}
	printf("[MYSQL]: %d Houses have been successfully loaded from the database.", Total_Houses_Created);
	return 1;
}


forward Load_House(id);
public Load_House(id)
{

	if(cache_num_rows())
    {

		Houses[id][SQLID] = cache_get_field_content_int(0, "SQLID", SQL_CONNECTION);
  		cache_get_field_content(0, "Name", Houses[id][Name], SQL_CONNECTION, 32);
		Houses[id][PosX] = cache_get_field_content_float(0, "PosX", SQL_CONNECTION);
		Houses[id][PosY] = cache_get_field_content_float(0, "PosY", SQL_CONNECTION);
		Houses[id][PosZ] = cache_get_field_content_float(0, "PosZ", SQL_CONNECTION);
		Houses[id][Interior] = cache_get_field_content_int(0, "Interior", SQL_CONNECTION);
		Houses[id][World] = cache_get_field_content_int(0, "World", SQL_CONNECTION);
		Houses[id][IntX] = cache_get_field_content_float(0, "IntX", SQL_CONNECTION);
		Houses[id][IntY] = cache_get_field_content_float(0, "IntY", SQL_CONNECTION);
		Houses[id][IntZ] = cache_get_field_content_float(0, "IntZ", SQL_CONNECTION);
		Houses[id][Owner] = cache_get_field_content_int(0, "Owner", SQL_CONNECTION);
		Houses[id][Price] = cache_get_field_content_int(0, "Price", SQL_CONNECTION);
		Houses[id][Safe] = cache_get_field_content_int(0, "Safe", SQL_CONNECTION);

		Create_House(id);
	}
	else
	{
		printf("ERROR: Loading house %d.", id);
		return 0;
	}
	printf("[MYSQL]: House %d has successfully been reload from the database.", id);
	return 1;
}


forward Create_House(id);
public Create_House(id)
{
	new str[128];
    if(Houses[id][Owner] == 0)
    {
		format(str, sizeof(str), ""COL_RED"FOR SALE\n"COL_WHITE"%s\nPrice: $%d \n",Houses[id][Name],Houses[id][Price]);
		Houses[id][LabelID] = CreateDynamic3DTextLabel(str, COLOR_WHITE, Houses[id][PosX],Houses[id][PosY],Houses[id][PosZ], 100, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 10.0);
    	Houses[id][PickupID] = CreateDynamicPickup(1273, 23, Houses[id][PosX],Houses[id][PosY],Houses[id][PosZ], 0, 0, -1, 250);

	}
	else if(Houses[id][Owner] > 0)
	{
	    new query[128];
		mysql_format(SQL_CONNECTION, query, sizeof(query), "SELECT `Name` FROM Characters WHERE ID = %d LIMIT 1", Houses[id][Owner]);
        mysql_tquery(SQL_CONNECTION, query, "Create_HouseLabel", "i", id);

		Houses[id][PickupID] = CreateDynamicPickup(1273, 23, Houses[id][PosX],Houses[id][PosY],Houses[id][PosZ], 0, 0, -1, 250);
	}
	return 1;
}


forward Create_HouseLabel(id);
public Create_HouseLabel(id)
{
	new str[128], houseowner[MAX_PLAYER_NAME];
	cache_get_field_content(0, "Name", houseowner, SQL_CONNECTION, MAX_PLAYER_NAME);
	format(str, sizeof(str), "%s\n"COL_GRAY"Owner: %s", Houses[id][Name], houseowner);
  	Houses[id][LabelID] = CreateDynamic3DTextLabel(str, COLOR_WHITE, Houses[id][PosX],Houses[id][PosY],Houses[id][PosZ], 100, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 10.0);
	return 1;
}
