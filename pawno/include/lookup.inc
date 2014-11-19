//===[Misc]=====================================================================

#include <a_http>

#define GetPlayerHost(%1) LookupData[%1][Hostname]
#define GetPlayerISP(%1) LookupData[%1][ISP]
#define GetPlayerCountryCode(%1) LookupData[%1][Code]
#define GetPlayerCountryName(%1) LookupData[%1][Country]
#define GetPlayerCountryRegion(%1) LookupData[%1][Region]
#define IsProxyUser(%1) LookupData[%1][Proxy]

enum ldata
{
	Hostname[60],
	ISP[60],
	Code[3],
	Country[45],
	Region[43],
	Proxy
};

new
	LookupData[MAX_PLAYERS][ldata],
	PlayerSession[MAX_PLAYERS],
	Retry[MAX_PLAYERS];

forward OnLookupResponse(sessionid, response, data[]);
forward OnLookupComplete(playerid);

//===[Callbacks]================================================================

public OnPlayerConnect(playerid)
{
	cleardata(LookupData[playerid][Hostname]);
	cleardata(LookupData[playerid][ISP]);
	cleardata(LookupData[playerid][Code]);
	cleardata(LookupData[playerid][Country]);
	cleardata(LookupData[playerid][Region]);
	LookupData[playerid][Proxy] = 0;

	Retry[playerid] = 0;
	PlayerSession[playerid] = 0;
	LookupPlayerIP(playerid);

	return CallLocalFunction("Lookup_OnPlayerConnect", "i", playerid);
}

public OnLookupResponse(sessionid, response, data[])
{
	new xml[5][2],
	playerid = GetPlayerFromSession(sessionid);

	if(playerid == -1) return 1;

	if(response != 200)
	{
	if(Retry[playerid] == 0)
	{
	Retry[playerid] = 1;
	LookupPlayerIP(playerid);
	}
	return 1;
	}

	xml[0][0] = strfind(data,     "<host>", true);
	xml[0][1] = strfind(data,    "</host>", true);
	xml[1][0] = strfind(data,      "<isp>", true);
	xml[1][1] = strfind(data,     "</isp>", true);
	xml[2][0] = strfind(data,     "<code>", true);
	xml[2][1] = strfind(data,    "</code>", true);
	xml[3][0] = strfind(data,  "<country>", true);
	xml[3][1] = strfind(data, "</country>", true);
	xml[4][0] = strfind(data,   "<region>", true);
	xml[4][1] = strfind(data,  "</region>", true);

	strmidex(LookupData[playerid][Hostname], data,  6 + xml[0][0], xml[0][1], 60);
	strmidex(LookupData[playerid][ISP],      data,  5 + xml[1][0], xml[1][1], 60);
	strmidex(LookupData[playerid][Code],     data,  6 + xml[2][0], xml[2][1],  3);
	strmidex(LookupData[playerid][Country],  data,  9 + xml[3][0], xml[3][1], 40);
	strmidex(LookupData[playerid][Region],   data,  8 + xml[4][0], xml[4][1], 40);

	LookupData[playerid][Proxy] = strval(data[strfind(data, "<proxy>", true) + 7]);

	CallLocalFunction("OnLookupComplete", "i", playerid);

	return 1;
}

//===[Functions]================================================================

stock LookupPlayerIP(playerid)
{
	if(!IsPlayerNPC(playerid))
	{

	new ip[16], lQuery[60];

	static
	SessionIndex;
	SessionIndex++;
	PlayerSession[playerid] = SessionIndex;

	GetPlayerIp(playerid, ip, sizeof(ip));
	format(lQuery, sizeof(lQuery), "lookupffs.com/api.php?ip=%s", ip);

	HTTP(SessionIndex, HTTP_GET, lQuery, "", "OnLookupResponse");

	}
}

stock GetPlayerFromSession(sessionid)
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	if(IsPlayerConnected(i) && PlayerSession[i] == sessionid)
	return i;
	}

	return -1;
}

stock DisplayLookupData(playerid, targetid)
{
	new lstr[300], boxname[40];

	GetPlayerIp(targetid, boxname, sizeof(boxname));
	format(boxname, sizeof(boxname), "IP Lookup: %s", boxname);

	format(lstr, sizeof(lstr),
	"Hostname: %s\n\
	ISP: %s\n\
	Country: %s (%s)\n\
	State/Region: %s",
	LookupData[targetid][Hostname],
	LookupData[targetid][ISP],
	LookupData[targetid][Country],
	LookupData[targetid][Code],
	LookupData[targetid][Region]);

	ShowPlayerDialog(playerid, 30000, DIALOG_STYLE_MSGBOX, boxname, lstr, "Close", "");
}

stock strmidex(dest[], const src[],  start, end, maxlength=sizeof dest)
{
	if(end - start > 1)
	strmid(dest, src,  start, end, maxlength);
}

stock cleardata(src[])
{
	src[0] = '?';

	new c = 1;
	while(src[c] != '\0')
	{
	src[c] = '\0';
	c++;
	}
}

//===[Hooking]==================================================================

#if defined _ALS_OnPlayerConnect
#undef OnPlayerConnect
#else
#define _ALS_OnPlayerConnect
#endif

#define OnPlayerConnect Lookup_OnPlayerConnect

forward Lookup_OnPlayerConnect(playerid);

