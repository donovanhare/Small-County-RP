enum biz
{
	SQLID,
	Name[32],
	Float:PosX,
	Float:PosY,
	Float:PosZ,
	Interior,
	World,
	Float:InteriorX,
	Float:InteriorY,
	Float:InteriorZ,
	Text3D: LabelID,
	PickupID,
	Owned,
	Price,
	Payout,
	Safe,
	Type,
	EntranceFee,
	Locked,
	Owner
};

new Business[MAX_BIZ][biz], Total_Biz_Created, bizzid[MAX_PLAYERS];
new Create_New_Biz_ID[MAX_PLAYERS];

Fetch_Businesses()
{
	mysql_tquery(SQL_CONNECTION, "SELECT * FROM `Business` ORDER BY SQLID ASC", "Load_Businesses");
	return 1;
}

Fetch_Business(id)
{
	new query[128];
	mysql_format(SQL_CONNECTION, query, sizeof(query), "SELECT * FROM `Business` WHERE SQLID = %d LIMIT 1", Business[id][SQLID]);
	mysql_tquery(SQL_CONNECTION, query, "Load_Business", "d", id);
	return 1;
}

Remove_Business(id)
{
	Total_Biz_Created --;
	DestroyDynamic3DTextLabel(Business[id][LabelID]);
	DestroyDynamicPickup(Business[id][PickupID]);
	return 1;
}

Reload_Business(id)
{
	Remove_Business(id);
	Fetch_Business(id);
	return 1;
}

forward Load_Businesses();
public Load_Businesses()
{
	new interiorcount[19];
	if(cache_num_rows())
    {
        for(new id = 1; id<cache_num_rows(); id++)
        {

			Business[id][SQLID] = cache_get_field_content_int(id, "SQLID", SQL_CONNECTION);
    		cache_get_field_content(id, "Name", Business[id][Name], SQL_CONNECTION, 32);
			Business[id][PosX] = cache_get_field_content_float(id, "PosX", SQL_CONNECTION);
			Business[id][PosY] = cache_get_field_content_float(id, "PosY", SQL_CONNECTION);
			Business[id][PosZ] = cache_get_field_content_float(id, "PosZ", SQL_CONNECTION);
			Business[id][Interior] = cache_get_field_content_int(id, "Interior", SQL_CONNECTION);
			Business[id][World] = cache_get_field_content_int(id, "World", SQL_CONNECTION);
			Business[id][InteriorX] = cache_get_field_content_float(id, "InteriorX", SQL_CONNECTION);
			Business[id][InteriorY] = cache_get_field_content_float(id, "InteriorY", SQL_CONNECTION);
			Business[id][InteriorZ] = cache_get_field_content_float(id, "InteriorZ", SQL_CONNECTION);
			Business[id][Owned] = cache_get_field_content_int(id, "Owned", SQL_CONNECTION);
			Business[id][Owner] = cache_get_field_content_int(id, "Owner", SQL_CONNECTION);
			Business[id][Price] = cache_get_field_content_int(id, "Price", SQL_CONNECTION);
			Business[id][Payout] = cache_get_field_content_int(id, "Payout", SQL_CONNECTION);
			Business[id][Safe] = cache_get_field_content_int(id, "Safe", SQL_CONNECTION);
			Business[id][Type] = cache_get_field_content_int(id, "Type", SQL_CONNECTION);
			Business[id][EntranceFee] = cache_get_field_content_int(id, "EntranceFee", SQL_CONNECTION);
			Business[id][Locked] = cache_get_field_content_int(id, "Locked", SQL_CONNECTION);

			Total_Biz_Created++;

			//Business[id][World] = interiorcount[Business[id][Interior]];
			interiorcount[Business[id][Interior]]++;
			Create_Business(id);

		}
	}

	//mysql_close(SQL_CONNECTION2);
	printf("[MYSQL]: %d Businesses have been successfully loaded from the database.", Total_Biz_Created);
	return 1;
}

forward Load_Business(id);
public Load_Business(id)
{
	if(cache_num_rows())
    {

		Business[id][SQLID] = cache_get_field_content_int(0, "SQLID", SQL_CONNECTION);
		cache_get_field_content(0, "Name", Business[id][Name], SQL_CONNECTION, 32);
		Business[id][PosX] = cache_get_field_content_float(0, "PosX", SQL_CONNECTION);
		Business[id][PosY] = cache_get_field_content_float(0, "PosY", SQL_CONNECTION);
		Business[id][PosZ] = cache_get_field_content_float(0, "PosZ", SQL_CONNECTION);
		Business[id][Interior] = cache_get_field_content_int(0, "Interior", SQL_CONNECTION);
		Business[id][World] = cache_get_field_content_int(0, "World", SQL_CONNECTION);
		Business[id][InteriorX] = cache_get_field_content_float(0, "InteriorX", SQL_CONNECTION);
		Business[id][InteriorY] = cache_get_field_content_float(0, "InteriorY", SQL_CONNECTION);
		Business[id][InteriorZ] = cache_get_field_content_float(0, "InteriorZ", SQL_CONNECTION);
		Business[id][Owned] = cache_get_field_content_int(0, "Owned", SQL_CONNECTION);
		Business[id][Owner] = cache_get_field_content_int(0, "Owner", SQL_CONNECTION);
		Business[id][Price] = cache_get_field_content_int(0, "Price", SQL_CONNECTION);
		Business[id][Payout] = cache_get_field_content_int(0, "Payout", SQL_CONNECTION);
		Business[id][Safe] = cache_get_field_content_int(0, "Safe", SQL_CONNECTION);
		Business[id][Type] = cache_get_field_content_int(0, "Type", SQL_CONNECTION);
		Business[id][EntranceFee] = cache_get_field_content_int(0, "EntranceFee", SQL_CONNECTION);
		Business[id][Locked] = cache_get_field_content_int(0, "Locked", SQL_CONNECTION);

		Total_Biz_Created++;
		printf("[MYSQL]: Business %d has successfully loaded from the database.", id);

		Create_Business(id);
	}
	else
	{
		printf("ERROR: Loading business %d.", id);
	}
	return 1;
}

forward Create_Business(id);
public Create_Business(id)
{
	new str[128], query[128];
	if(Business[id][Owned] == 0)
    {
    	format(str, sizeof(str), ""COL_RED" FOR SALE\n\n"COL_ORANGE" %s \n"COL_GRAY"(/buybiz)\n Price: $%s", Business[id][Name], FormatNumber(Business[id][Price]));

        if(Business[id][Type] == 5) 
        	Business[id][PickupID] = CreateDynamicPickup(1275, 23, Business[id][PosX], Business[id][PosY], Business[id][PosZ], 0, 0, -1, 250);
		else 
			Business[id][PickupID] = CreateDynamicPickup(1272, 23, Business[id][PosX], Business[id][PosY], Business[id][PosZ], 0, 0, -1, 250); 
	}
	else if(Business[id][Owned] == 1)
    {
		mysql_format(SQL_CONNECTION, query, sizeof(query), "SELECT `Name` FROM Characters WHERE ID = %d LIMIT 1", Business[id][Owner]);
        mysql_tquery(SQL_CONNECTION, query, "Create_BusinessLabel", "i", id);

        if(Business[id][Type] == 5)//clothes shop
        	Business[id][PickupID] = CreateDynamicPickup(1275, 23, Business[id][PosX], Business[id][PosY], Business[id][PosZ], 0, 0, -1, 250);
		
		if(Business[id][Type] != 5)
			Business[id][PickupID] = CreateDynamicPickup(1272, 23, Business[id][PosX], Business[id][PosY], Business[id][PosZ], 0, 0, -1, 250);

	}

	else if(Business[id][Owned] == 2)//bank
    {
		format(str, sizeof(str), ""COL_WHITE" %s ", Business[id][Name]);
		Business[id][PickupID] = CreateDynamicPickup(1274, 23, Business[id][PosX], Business[id][PosY], Business[id][PosZ], 0, 0, -1, 250);
	}
	else if(Business[id][Owned] == 3)//Entrance
    {
		format(str, sizeof(str), ""COL_WHITE" %s ", Business[id][Name]);
		Business[id][PickupID] = CreateDynamicPickup(1318, 23, Business[id][PosX], Business[id][PosY], Business[id][PosZ], 0, 0, -1, 250);
	}

	Business[id][LabelID] = CreateDynamic3DTextLabel(str, COLOR_WHITE, Business[id][PosX],Business[id][PosY],Business[id][PosZ], 100, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 10.0);
	return 1;
}

forward Create_BusinessLabel(id);
public Create_BusinessLabel(id)
{
	new str[128], OwnerName[MAX_PLAYER_NAME];
	cache_get_field_content(0, "Name", OwnerName, SQL_CONNECTION, MAX_PLAYER_NAME);
	format(str, sizeof(str), ""COL_ORANGE" %s \n"COL_GRAY" Owner: %s \n Payout: $%s \n Entrance Fee: $%s", Business[id][Name], OwnerName, FormatNumber(Business[id][Payout]), FormatNumber(Business[id][EntranceFee]));
	Business[id][LabelID] = CreateDynamic3DTextLabel(str, COLOR_WHITE, Business[id][PosX],Business[id][PosY],Business[id][PosZ], 100, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 10.0);
	return 1;
}



