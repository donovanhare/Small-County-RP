//==============================================================================
//          -- > Chat Functions
//==============================================================================

#include <YSI\y_hooks>

#define Range_VShort                                                            4.0
#define Range_Short                                                             15.0
#define Range_Normal                                                            20.0
#define Range_Long                                                              40.0
#define Range_VLong                                                             100.0   


#define SPLITLENGTH 118

stock SendSplitMessage(playerid, color, final[])
{
    #pragma unused playerid, color
    new buffer[SPLITLENGTH+5];
    new len = strlen(final);
    if(len>SPLITLENGTH)
    {
        new times = (len/SPLITLENGTH);
        for(new i = 0; i < times+1; i++)
        {
            strdel(buffer, 0, SPLITLENGTH+5);
            if(len-(i*SPLITLENGTH)>SPLITLENGTH)
            {
                strmid(buffer, final, SPLITLENGTH*i, SPLITLENGTH*(i+1));
                format(buffer, sizeof(buffer), "%s ...", buffer);
            }
            else
            {
                strmid(buffer, final, SPLITLENGTH*i, len);
            }
            SendClientMessage(playerid, color, buffer);
        }
    }
    else
    {
        //if == 1 - normal if = 2 asay
        SendClientMessage(playerid, color, final);
    }
}

stock SendLocalMessage(playerid, msg[], Float:MessageRange, Range1color, Range2color)
{
    new Float: PlayerX, Float: PlayerY, Float: PlayerZ;
    GetPlayerPos(playerid, PlayerX, PlayerY, PlayerZ);
    for(new i = 0; i < MAX_PLAYERS; i++ )
    {
        if(IsPlayerInRangeOfPoint(i, MessageRange, PlayerX, PlayerY,PlayerZ))
        {
            SendSplitMessage(i, Range1color, msg);
        }
        else if(IsPlayerInRangeOfPoint(i, MessageRange/2.0, PlayerX, PlayerY,PlayerZ))
        {
            SendSplitMessage(i, Range2color, msg);
        }
    }
    return 1;
}


stock SendPunishmentMessage(str[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(IsPlayerConnected(i))
        {
            if(PlayerInfo[i][LoggedIn] > 0)
            {
                new astr[128];
                format(astr, sizeof(astr), "[PUNISHMENT] %s", str);
                SendClientMessage(i, COLOR_ORANGERED, astr);
             }
        }
    }
    return 1;
}

stock SendErrorMessage(playerid, str[])
{
    new astr[128];
    format(astr, sizeof(astr), "> [ERROR] %s", str);
    SendClientMessage(playerid, COLOR_GRAY, astr);
    return 1;
}

stock SendInfoMessage(playerid, str[])
{
    new astr[128];
    format(astr, sizeof(astr), "[INFO] %s", str);
    SendClientMessage(playerid, COLOR_LBLUE, astr);
    return 1;
}

stock SendAdminsMessage(level, color, str[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(IsPlayerConnected(i))
        {
            new astr[128];
            if(MasterAccount[i][Admin] >= level)
            {
                format(astr, sizeof(astr), "[Admin Msg] %s", str);
                SendClientMessage(i, color, astr);
            }
        }
    }
}


hook OnPlayerText(playerid, text[])
{
    new str[600];
    if(Inventory[playerid][PhoneStatus] != 4)
    {
        format(str, sizeof(str), "%s says: %s",GetRoleplayName(playerid), text);
        SendLocalMessage(playerid, str, Range_Normal, COLOR_WHITE, COLOR_GRAY);
        SetPlayerChatBubble(playerid, text, COLOR_WHITE, Range_Normal, SECONDS(7));
    }  
    return 1;        
}



