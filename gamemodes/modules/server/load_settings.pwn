
enum sver
{
	ID,
	Name[32],
	Version[16],
	Locked,
	Password[32],
	Weather
};

new Server[sver];

forward LoadSettings(id);
public LoadSettings(id)
{
	if(cache_num_rows())
    {
    	
    	Server[ID] = cache_get_field_content_int(0, "ID", SQL_CONNECTION);
  		cache_get_field_content(0, "Name", Server[Name], SQL_CONNECTION, 32);
  		cache_get_field_content(0, "Version", Server[Version], SQL_CONNECTION, 16);
		Server[Locked] = cache_get_field_content_int(0, "Locked", SQL_CONNECTION);
		cache_get_field_content(0, "Password", Server[Password], SQL_CONNECTION, 16);
		Server[Weather] = cache_get_field_content_int(0, "Weather", SQL_CONNECTION);

		new str[128];
		if(Server[Locked] == 1)
		{
			
			format(str, sizeof(str), "password %s", Server[Password]);
			SendRconCommand(str);
		}
		else if(Server[Locked] == 0)
		{
			SendRconCommand("password ");
		}
		format(str, sizeof(str), "hostname %s", Server[Name]);
		SendRconCommand(str);

		format(str, sizeof(str), "gamemodetext %s", Server[Version]);
		SendRconCommand(str);

		printf("[MYSQL]: Server Settings Loaded.", id);
	}
	else
	{
		print("ERROR: Loading Settings");
	}
	return 1;
}

