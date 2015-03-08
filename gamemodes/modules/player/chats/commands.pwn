//==============================================================================
//          -- > Chat Commands
//==============================================================================

CMD:b(playerid, params[])
{
    new str[200];
    if(sscanf(params, "s[200]", str)) return SendClientMessage(playerid, COLOR_GRAY, "/b [message]");

    format(str, sizeof(str), "(( %s: %s ))", GetRoleplayName(playerid), str);
    SendLocalMessage(playerid, str,Range_Normal, COLOR_LBLUE, COLOR_LBLUE);
    SetPlayerChatBubble(playerid, str, COLOR_LBLUE, Range_Normal, 7000);

    return 1;
}

CMD:me(playerid, params[])
{
    new str[200];
    if(sscanf(params, "s[200]", str)) return SendClientMessage(playerid, COLOR_GRAY, "/me [message]");

    format(str, sizeof(str), "%s %s", GetRoleplayName(playerid), str);
    SendLocalMessage(playerid, str, Range_Normal, COLOR_RP, COLOR_RP);
    SetPlayerChatBubble(playerid, str, COLOR_RP, Range_Normal, 7000);
    
    return 1;
}

CMD:ame(playerid, params[])
{
    new str[200];
    if(sscanf(params, "s[200]", str)) return SendClientMessage(playerid, COLOR_GRAY, "/ame [message]");

    format(str, sizeof(str), "* %s %s *", GetRoleplayName(playerid), str);
    SetPlayerChatBubble(playerid, str, COLOR_RP, Range_Short, 7000);
    SendClientMessage(playerid, COLOR_RP, str);
    return 1;
}

CMD:a(playerid, params[])
{
    new str[200];
    if(MasterAccount[playerid][Admin] > 0)
    {
        if(sscanf(params, "s[200]", str)) return SendClientMessage(playerid, COLOR_GRAY, "/a [text]");
        format(str, sizeof(str), "%s: %s", GetRoleplayName(playerid), str);
        SendAdminsMessage(1, COLOR_TURQUOISE, str);
    }
    else SendErrorMessage(playerid, ERROR_ADMIN);
    return 1;
}

CMD:do(playerid, params[])
{
    new str[200];
    if(sscanf(params, "s[200]", str)) return SendClientMessage(playerid, COLOR_GRAY, "/do [text]");

    format(str, sizeof(str), "%s ((%s))", str, GetRoleplayName(playerid));
    SendLocalMessage(playerid, str, Range_Normal, COLOR_RP, COLOR_RP);
    return 1;
}

CMD:shout(playerid, params[])
{
    new str[200], msg[200];
    if(sscanf(params, "s[200]", msg)) return SendClientMessage(playerid, COLOR_GRAY, "/(s)hout [text]");
    if(Inventory[playerid][PhoneStatus] != 4)
    {
        format(str, sizeof(str), "%s shouts: %s!", GetRoleplayName(playerid), msg);
        SendLocalMessage(playerid, str, Range_Long, COLOR_ORANGE, COLOR_ORANGE);
        SetPlayerChatBubble(playerid, str, COLOR_ORANGE, Range_Long, 7000);
    }
    else
    {
        format(str, sizeof(str), "[Phone] %s shouts: %s!", GetRoleplayName(playerid), msg);
        SendSplitMessage(Inventory[playerid][PhoneCaller], COLOR_ORANGE, msg);
        SendLocalMessage(playerid, str, Range_Long, COLOR_ORANGE, COLOR_ORANGE);
        SetPlayerChatBubble(playerid, str, COLOR_ORANGE, Range_Long, 7000);
    }
    return 1;
}
ALTCMD:s->shout;

CMD:low(playerid, params[])
{
    new str[168], msg[200];
    if(sscanf(params, "s[200]", msg)) return SendClientMessage(playerid, COLOR_GRAY, "/(l)ow [text]");

    format(str, sizeof(str), "[LOW] %s: %s", GetRoleplayName(playerid), msg);
    SendLocalMessage(playerid, str, Range_VShort, COLOR_GRAY, COLOR_GRAY);
    SetPlayerChatBubble(playerid, "* Speaks quietly. *", COLOR_RP, Range_VShort, 4000);

    return 1;
}
ALTCMD:l->low;

CMD:whisper(playerid, params[])
{
    new str[200], msg[200], pID;
    if(sscanf(params, "us[200]", pID,msg)) return SendClientMessage(playerid, COLOR_GRAY, "/whisper [playerid] [message]");

    if(IsInRangeOfPlayer(playerid, pID, 5))
    {
        format(str, sizeof(str), "%s whispers: %s", GetRoleplayName(playerid), msg);
        SendSplitMessage(pID, COLOR_WHITE, str);
        format(str, sizeof(str), "* %s whispers something to %s. *", GetRoleplayName(playerid), GetRoleplayName(pID));
        SendLocalMessage(playerid, str, Range_Short, COLOR_RP, COLOR_RP);
        SetPlayerChatBubble(playerid, str, COLOR_RP, Range_Short, 7000);
    }
    else
    {
        InfoBoxForPlayer(playerid, "You are too far away from this player.");
    }
    return 1;
}
ALTCMD:w->whisper;

CMD:pm(playerid, params[])
{
    new pID, pmmsg[200], str[200];
    if(sscanf(params, "us[200]", pID, pmmsg)) return SendClientMessage(playerid, COLOR_GRAY, "/pm [playerid] [message]");
    format(str, sizeof(str), "[PM from [%d] %s]: %s", playerid, GetRoleplayName(playerid), pmmsg);
    SendSplitMessage(pID, COLOR_YELLOW, str);

    format(str, sizeof(str), "[PM to [%d] %s]: %s", pID, GetRoleplayName(pID), pmmsg);
    SendSplitMessage(playerid, COLOR_YELLOW, str);
    return 1;
}
