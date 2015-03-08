//==============================================================================
#define PAYDAY_STANDARD                                                         250
#define PAYDAY_FACTION	                                                        300
#define PAYDAY_DONATOR	                                                        2500
#define PAYDAY_ADMIN	                                                        3750
#define PAYDAY_XP_STANDARD                                                      1
#define PAYDAY_XP_BIZ                                                           2
#define PAYDAY_XP_FACTION                                                       1
//==============================================================================

#define LOG_PATH "/Server Logs/%s.txt"



#define SECONDS(%0)             (%0*1000)
#define MINUTES(%0)             (%0*SECONDS(60))
#define HOURS(%0)               (%0*MINUTES(60))

#define ALTCMD:%1->%2; \
    CMD:%1(playerid, params[]) \
    return cmd_%2(playerid, params);

#define ALTCMD2:%1->%2; \
    CMD:%1(playerid) \
    return cmd_%2(playerid);

// PRESSED(keys)
#define PRESSED(%0) \
	(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))


//==============================================================================
#define TAXI_JOB														  		 1
#define MECHANIC_JOB													  		 2

#define PNC_JAIL																 1
#define PNC_CHARGE																 2
#define PNC_FINES																 3
#define PNC_WARRANT																 4
#define PNC_WLOG																 5

