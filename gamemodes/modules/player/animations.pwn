//==========================================================================
//	Animations  														  //
//==========================================================================
new LoopAnim[MAX_PLAYERS];
new LibsPreloaded[MAX_PLAYERS];
new Text:AnimText[MAX_PLAYERS];
//==========================================================================

public OnPlayerSpawn(playerid)
{
    if(!LibsPreloaded[playerid]) {
        PreloadAnimLib(playerid,"BOMBER");
        PreloadAnimLib(playerid,"RAPPING");
        PreloadAnimLib(playerid,"SHOP");
        PreloadAnimLib(playerid,"BEACH");
        PreloadAnimLib(playerid,"SMOKING");
        PreloadAnimLib(playerid,"FOOD");
        PreloadAnimLib(playerid,"ON_LOOKERS");
        PreloadAnimLib(playerid,"DEALER");
        PreloadAnimLib(playerid,"MISC");
        PreloadAnimLib(playerid,"SWEET");
        PreloadAnimLib(playerid,"RIOT");
        PreloadAnimLib(playerid,"PED");
        PreloadAnimLib(playerid,"POLICE");
        PreloadAnimLib(playerid,"CRACK");
        PreloadAnimLib(playerid,"CARRY");
        PreloadAnimLib(playerid,"COP_AMBIENT");
        PreloadAnimLib(playerid,"PARK");
        PreloadAnimLib(playerid,"INT_HOUSE");
        PreloadAnimLib(playerid,"FOOD");
        LibsPreloaded[playerid] = 1;
    }
    return 1;
}


OnePlayAnim(playerid,animlib[],animname[], Float:Speed, looping, lockx, locky, lockz, lp)
{
	ApplyAnimation(playerid, animlib, animname, Speed, looping, lockx, locky, lockz, lp);
}


LoopingAnim(playerid,animlib[],animname[], Float:Speed, looping, lockx, locky, lockz, lp)
{
    LoopAnim[playerid] = 1;
    ApplyAnimation(playerid, animlib, animname, Speed, looping, lockx, locky, lockz, lp);
    TextDrawShowForPlayer(playerid,AnimText[playerid]);
}

StopLoopingAnim(playerid)
{
	LoopAnim[playerid] = 0;
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0);
}


PreloadAnimLib(playerid, animlib[])
{
	ApplyAnimation(playerid,animlib,"null",0.0,0,0,0,0,0);
}


CMD:animlist(playerid, params[])
{
    Line(playerid);
    SendClientMessage(playerid,0x061FF9FF,"/handsup - /bomb - /getarrested - /handsup - /laugh - /lookout - /aim - /sup - /smokecig");
    SendClientMessage(playerid,0x061FF9FF,"/crossarms - /hide - /vomit - /wave - /scratch - /hitch - /getarrested - /clear");
    SendClientMessage(playerid,0x061FF9FF,"/deal - /crack - /drunk - /smoke - /groundsit - /sit - /chat - /fucku - /push - /lowbodypush");
    SendClientMessage(playerid,0xFFFF79FF,"/shouting - /chant - /frisked - /exhausted - /injured - /slapass - /dealstance - /bat");
    SendClientMessage(playerid,0xFFFF79FF,"/fall - /fallback - /injured - /akick - /push - /lowbodypush - /handsup - /bomb - /drunk - /laugh");
    SendClientMessage(playerid,0xFFFF79FF," /basket - /headbutt - /medic - /spraycan - /robman - /taichi - /lookout - /kiss - /cellin - /cellout - /crossarms");
    SendClientMessage(playerid,0xFFFF79FF,"/deal - /crack - /groundsit - /chat - /dance - /fucku - /strip - /hide - /vomit - /eat - /chairsit - /reload");
    SendClientMessage(playerid,0xE80000FF,"/lifejump - /exhaust - /leftslap - /carlock - /hoodfrisked - /lightcig - /tapcig - /box - /chant - /finger - /rollfall");
    SendClientMessage(playerid,0xE80000FF,"/shouting - /knife - /cop - /elbow - /kneekick - /airkick - /gkick - /gpunch - /fstance - /lowthrow - /highthrow - /kostomach");
    SendClientMessage(playerid,0xE80000FF,"/pee - /lean - /chairsit - /run - /groundsit - /relax - /fall - /fallback - /reload - /knife - /basket - /lay - /lay2 - /koface");
    return 1;
}


CMD:lifejump(playerid, params[])
{
	LoopingAnim(playerid,"PED","EV_dive",4.0,0,1,1,1,0);
	return 1;
}
CMD:robman(playerid, params[])
{
    LoopingAnim(playerid, "SHOP", "ROB_Loop_Threat", 4.0, 1, 0, 0, 0, 0); // Rob
	return 1;
}
CMD:exhaust(playerid, params[])
{
	LoopingAnim(playerid,"PED","IDLE_tired",3.0,1,0,0,0,0);
    return 1;
}
CMD:carlock(playerid, params[])
{
	OnePlayAnim(playerid,"PED","CAR_doorlocked_LHS",4.0,0,0,0,0,0);
    return 1;
}
CMD:hoodfrisked(playerid, params[])
{
    LoopingAnim(playerid,"POLICE","crm_drgbst_01",4.0,0,1,1,1,0);
    return 1;
}
CMD:lightcig(playerid, params[])
{
    OnePlayAnim(playerid,"SMOKING","M_smk_in",3.0,0,0,0,0,0);
    return 1;
}
CMD:tapcig(playerid, params[])
{
    OnePlayAnim(playerid,"SMOKING","M_smk_tap",3.0,0,0,0,0,0);
    return 1;
}
CMD:bat(playerid, params[])
{
    LoopingAnim(playerid,"BASEBALL","Bat_IDLE",4.0,1,1,1,1,0);
    return 1;
}
CMD:lean(playerid, params[])
{
    new option;
    if(sscanf(params, "d", option)) return SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /lean [1-2]");
	switch (option)
	{
    	case 1: LoopingAnim(playerid,"GANGS","leanIDLE",4.0,0,1,1,1,0);
    	case 2: LoopingAnim(playerid,"MISC","Plyrlean_loop",4.0,0,1,1,1,0);
    	default: SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /lean [1-2]");
	}
	return 1;
}
CMD:clear(playerid, params[])
{
	 //ClearAnimations(playerid);
	 ApplyAnimation(playerid, "CARRY", "crry_prtial", 1.0, 0, 0, 0, 0, 0);
     return 1;
}
CMD:strip(playerid, params[])
{
    new option;
    if(sscanf(params, "d", option)) return SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /strip [1-7]");
	switch (option)
	{
    	case 1: LoopingAnim(playerid,"STRIP", "strip_A", 4.1, 1, 1, 1, 1, 1 );
    	case 2: LoopingAnim(playerid,"STRIP", "strip_B", 4.1, 1, 1, 1, 1, 1 );
    	case 3: LoopingAnim(playerid,"STRIP", "strip_C", 4.1, 1, 1, 1, 1, 1 );
    	case 4: LoopingAnim(playerid,"STRIP", "strip_D", 4.1, 1, 1, 1, 1, 1 );
    	case 5: LoopingAnim(playerid,"STRIP", "strip_E", 4.1, 1, 1, 1, 1, 1 );
    	case 6: LoopingAnim(playerid,"STRIP", "strip_F", 4.1, 1, 1, 1, 1, 1 );
    	case 7: LoopingAnim(playerid,"STRIP", "strip_G", 4.1, 1, 1, 1, 1, 1 );
    	default: SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /strip [1-7]");
	}
	return 1;
}

CMD:box(playerid, params[])
{
    LoopingAnim(playerid,"GYMNASIUM","GYMshadowbox",4.0,1,1,1,1,0);
    return 1;
}
CMD:lowthrow(playerid, params[])
{
    OnePlayAnim(playerid,"GRENADE","WEAPON_throwu",3.0,0,0,0,0,0);
    return 1;
}
CMD:highthrow(playerid, params[])
{
    OnePlayAnim(playerid,"GRENADE","WEAPON_throw",4.0,0,0,0,0,0);
    return 1;
}
CMD:leftslap(playerid, params[])
{
    OnePlayAnim(playerid,"PED","BIKE_elbowL",4.0,0,0,0,0,0);
    return 1;
}
CMD:fall(playerid, params[])
{
    LoopingAnim(playerid,"PED","KO_skid_front",4.1,0,1,1,1,0);
    return 1;
}
CMD:fallback(playerid, params[])
{
    LoopingAnim(playerid, "PED","FLOOR_hit_f", 4.0, 1, 0, 0, 0, 0);
    return 1;
}
CMD:rap(playerid, params[])
{
	new option;
    if(sscanf(params, "d", option)) return SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /rap [1-4]");
    switch (option)
    {
	    case 1: LoopingAnim(playerid,"RAPPING","RAP_A_Loop",4.0,1,0,0,0,0);
    	case 2: LoopingAnim(playerid,"RAPPING","RAP_C_Loop",4.0,1,0,0,0,0);
    	case 3: LoopingAnim(playerid,"GANGS","prtial_gngtlkD",4.0,1,0,0,0,0);
    	case 4: LoopingAnim(playerid,"GANGS","prtial_gngtlkH",4.0,1,0,0,1,1);
    	default: SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /rap [1-4]");
	}
	return 1;
}
CMD:push(playerid, params[])
{
    OnePlayAnim(playerid,"GANGS","shake_cara",4.0,0,0,0,0,0);
    return 1;
}
CMD:akick(playerid, params[])
{
    OnePlayAnim(playerid,"POLICE","Door_Kick",4.0,0,0,0,0,0);
    return 1;
}
CMD:lowbodypush(playerid, params[])
{
    OnePlayAnim(playerid,"GANGS","shake_carSH",4.0,0,0,0,0,0);
    return 1;
}
CMD:spraycan(playerid, params[])
{
    OnePlayAnim(playerid,"SPRAYCAN","spraycan_full",4.0,0,0,0,0,0);
    return 1;
}
CMD:headbutt(playerid, params[])
{
    OnePlayAnim(playerid,"WAYFARER","WF_Fwd",4.0,0,0,0,0,0);
    return 1;
}
CMD:piss(playerid, params[])
{
    SetPlayerSpecialAction(playerid, 68);
    return 1;
}
    
CMD:pee(playerid, params[])
{
    SetPlayerSpecialAction(playerid, 68);
    return 1;
}
CMD:koface(playerid, params[])
{
    LoopingAnim(playerid,"PED","KO_shot_face",4.0,0,1,1,1,0);
    return 1;
}
CMD:kostomach(playerid, params[])
{
    LoopingAnim(playerid,"PED","KO_shot_stom",4.0,0,1,1,1,0);
    return 1;
}
CMD:rollfall(playerid, params[])
{
    LoopingAnim(playerid,"PED","BIKE_fallR",4.0,0,1,1,1,0);
    return 1;
}
CMD:lay2(playerid, params[])
{
    LoopingAnim(playerid,"SUNBATHE","Lay_Bac_in",3.0,0,1,1,1,0);
    return 1;
}
CMD:hitch(playerid, params[])
{
    LoopingAnim(playerid,"MISC","Hiker_Pose", 4.0, 1, 0, 0, 0, 0);
    return 1;
}
CMD:beach(playerid, params[])
{
    LoopingAnim(playerid,"BEACH","SitnWait_loop_W",4.1,0,1,1,1,1);
    return 1;
}
	
CMD:medic(playerid, params[])
{
    LoopingAnim(playerid,"MEDIC","CPR",4.1,0,1,1,1,1);
    return 1;
}
CMD:scratch(playerid, params[])
{
	LoopingAnim(playerid,"MISC","Scratchballs_01", 4.0, 1, 0, 0, 0, 0);
	return 1;
}
CMD:sit(playerid, params[])
{
	LoopingAnim(playerid,"PED","SEAT_idle", 4.0, 1, 0, 0, 0, 0);
	return 1;
}
CMD:cellout(playerid, params[])
{
    SetPlayerSpecialAction(playerid,SPECIAL_ACTION_STOPUSECELLPHONE);
    return 1;
}
CMD:drunk(playerid, params[])
{
	LoopingAnim(playerid,"PED","WALK_DRUNK",4.0,1,1,1,1,0);
	return 1;
}
CMD:bomb(playerid, params[])
{
	ClearAnimations(playerid);
	OnePlayAnim(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0);
	return 1;
}
CMD:getarrested(playerid, params[])
{
    LoopingAnim(playerid,"ped", "ARRESTgun", 4.0, 0, 1, 1, 1, -1); 
    return 1;
}
CMD:laugh(playerid, params[])
{
    OnePlayAnim(playerid, "RAPPING", "Laugh_01", 4.0, 0, 0, 0, 0, 0); 
    return 1;
}
CMD:lookout(playerid, params[])
{
    OnePlayAnim(playerid, "SHOP", "ROB_Shifty", 4.0, 0, 0, 0, 0, 0);
    return 1;
}
CMD:aim(playerid, params[])
{
    LoopingAnim(playerid, "SHOP", "ROB_Loop_Threat", 4.0, 1, 0, 0, 0, 0); 
    return 1;
}
CMD:crossarms(playerid, params[])
{
    LoopingAnim(playerid, "COP_AMBIENT", "Coplook_loop", 4.0, 0, 1, 1, 1, -1); 
    return 1;
}
CMD:lay(playerid, params[])
{
    LoopingAnim(playerid,"BEACH", "bather", 4.0, 1, 0, 0, 0, 0); 
    return 1;
}
CMD:hide(playerid, params[])
{
    LoopingAnim(playerid, "ped", "cower", 3.0, 1, 0, 0, 0, 0); 
    return 1;
}
CMD:vomit(playerid, params[])
{
    OnePlayAnim(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
    return 1;
}
CMD:eat(playerid, params[])
{
      OnePlayAnim(playerid, "FOOD", "EAT_Burger", 3.0, 0, 0, 0, 0, 0); // Eat Burger
	  return 1;
}
CMD:wave(playerid, params[])
{
    LoopingAnim(playerid, "ON_LOOKERS", "wave_loop", 4.0, 1, 0, 0, 0, 0); 
    return 1;
}
CMD:smokecig(playerid, params[])
{
	new option;
    if(sscanf(params, "d", option)) return SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /smokecig [1-4]");
    switch (option)
    {
    	case 1: LoopingAnim(playerid,"SMOKING", "M_smklean_loop", 4.0, 1, 0, 0, 0, 0); // male
    	case 2: LoopingAnim(playerid,"SMOKING", "F_smklean_loop", 4.0, 1, 0, 0, 0, 0); //female
    	case 3: LoopingAnim(playerid,"SMOKING","M_smkstnd_loop", 4.0, 1, 0, 0, 0, 0); // standing-fucked
    	case 4: LoopingAnim(playerid,"SMOKING","M_smk_out", 4.0, 1, 0, 0, 0, 0); // standing
    	default: SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /smokecig [1-4]");
	}
	return 1;
}
CMD:shouting(playerid, params[])
{
    LoopingAnim(playerid,"RIOT","RIOT_shout",4.0,1,0,0,0,0);
    return 1;
}
CMD:chant(playerid, params[])
{
    LoopingAnim(playerid,"RIOT","RIOT_CHANT",4.0,1,1,1,1,0);
    return 1;
}
CMD:frisked(playerid, params[])
{
    LoopingAnim(playerid,"POLICE","crm_drgbst_01",4.0,0,1,1,1,0);
    return 1;
}
CMD:exhausted(playerid, params[])
{
    LoopingAnim(playerid,"PED","IDLE_tired",3.0,1,0,0,0,0);
    return 1;
}
CMD:injured(playerid, params[])
{
    LoopingAnim(playerid, "SWEET", "Sweet_injuredloop", 4.0, 1, 0, 0, 0, 0);
    return 1;
}
CMD:slapass(playerid, params[])
{
    OnePlayAnim(playerid, "SWEET", "sweet_ass_slap", 4.0, 0, 0, 0, 0, 0);
    return 1;
}
CMD:deal(playerid, params[])
{
    OnePlayAnim(playerid, "DEALER", "DEALER_DEAL", 4.0, 0, 0, 0, 0, 0); 
    return 1;
}
CMD:dealstance(playerid, params[])
{
    LoopingAnim(playerid,"DEALER","DEALER_IDLE",4.0,1,0,0,0,0);
    return 1;
}
CMD:crack(playerid, params[])
{
    LoopingAnim(playerid, "CRACK", "crckdeth2", 4.0, 1, 0, 0, 0, 0); 
    return 1;
}
CMD:wank(playerid, params[])
{
    LoopingAnim(playerid,"PAULNMAC", "wank_loop", 1.800001, 1, 0, 0, 1, 600);
    return 1;
}
CMD:groundsit(playerid, params[])
{
    LoopingAnim(playerid,"BEACH", "ParkSit_M_loop", 4.0, 1, 0, 0, 0, 0); 
    return 1;
}
 
CMD:rocky(playerid, params[])
{
    LoopingAnim(playerid,"GYMNASIUM", "GYMshadowbox", 1.800001, 1, 0, 0, 1, 600);
    return 1;
}
CMD:chairsit(playerid, params[])
{
    LoopingAnim(playerid,"BAR","dnk_stndF_loop",4.0,1,0,0,0,0);
    return 1;
}
CMD:chat(playerid, params[])
{
    OnePlayAnim(playerid,"PED","IDLE_CHAT",4.0,0,0,0,0,0);
    return 1;
}
CMD:fucku(playerid, params[])
{
    OnePlayAnim(playerid,"PED","fucku",4.0,0,0,0,0,0);
    return 1;
}
CMD:taichi(playerid, params[])
{
    LoopingAnim(playerid,"PARK","Tai_Chi_Loop",4.0,1,0,0,0,0);
    return 1;
}
CMD:sleep(playerid, params[])
{
    LoopingAnim(playerid,"CRACK", "crckdeth2", 1.800001, 1, 0, 0, 1, 600);
    return 1;
}
	
CMD:relax(playerid, params[])
{
    LoopingAnim(playerid,"BEACH", "bather", 4.0, 1, 0, 0, 0, 0);
    return 1;
}
CMD:knife(playerid, params[])
{
	new option;
    if(sscanf(params, "d", option)) return SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /knife [1-4]");
    switch (option)
    {
    	    case 1: LoopingAnim(playerid,"KNIFE","KILL_Knife_Ped_Damage",4.0,0,1,1,1,0);
        	case 2: LoopingAnim(playerid,"KNIFE","KILL_Knife_Ped_Die",4.0,0,1,1,1,0);
        	case 3: OnePlayAnim(playerid,"KNIFE","KILL_Knife_Player",4.0,0,0,0,0,0);
        	case 4: LoopingAnim(playerid,"KNIFE","KILL_Partial",4.0,0,1,1,1,1);
        	default: SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /knife [1-4]");
	}
	return 1;
}
CMD:basket(playerid, params[])
{
	new option;
    if(sscanf(params, "d", option)) return SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /basket [1-6]");
    switch (option)
    {
    	case 1: LoopingAnim(playerid,"BSKTBALL","BBALL_idleloop",4.0,1,0,0,0,0);
    	case 2: OnePlayAnim(playerid,"BSKTBALL","BBALL_Jump_Shot",4.0,0,0,0,0,0);
    	case 3: OnePlayAnim(playerid,"BSKTBALL","BBALL_pickup",4.0,0,0,0,0,0);
    	case 4: LoopingAnim(playerid,"BSKTBALL","BBALL_run",4.1,1,1,1,1,1);
    	case 5: LoopingAnim(playerid,"BSKTBALL","BBALL_def_loop",4.0,1,0,0,0,0);
    	case 6: LoopingAnim(playerid,"BSKTBALL","BBALL_Dnk",4.0,1,0,0,0,0);
    	default: SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /basket [1-6]");
	}
	return 1;
}
CMD:dance(playerid, params[])
{
    new option;
    if(sscanf(params, "d", option)) return SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /dance [1-4]");
    switch (option)
    {
        case 1: SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE1);
        case 2: SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE1);
        case 3: SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE1);
        case 4: SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE1);
        default: SendClientMessage(playerid,0xEFEFF7AA,"USAGE: /dance [1-4]");
	}

	return 1;
}