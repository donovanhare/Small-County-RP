//==============================================================================
//          -- > Error Message Defines
//==============================================================================
#define ERROR_LOGGEDIN															"You are not logged in, mate."
#define ERROR_ADMIN 															"You don't have access to this command."
#define ERROR_SPAM_TIME															"This command cannot be performed at this point in time."
#define ERROR_LOCATION															"This command cannot be performed at this location."
#define ERROR_MONEY																"Insufficient funds."
#define ERROR_ADMINLEVEL														"This cannot be performed on a higher level administrator."
#define ERROR_INVALIDPLAYER														"Invalid player specified."
#define ERROR_VEHICLE															"You must be in a vehicle to perform this command."
#define ERROR_FACTION 															"You don't have access to this command."
#define ERROR_VALUE																"You cannot use that value at this point in time."
#define ERROR_OPTION															"Not a valid option."
#define ERROR_DIALOG															"The dialog has been closed."
#define ERROR_RANK																"Not a high enough rank."
#define ERROR_MUTED																"You are muted, you cannot talk."
#define ERROR_OWNED																"You already own an item of this type."
#define ERROR_OWNER																"This item is already owned."
#define ERROR_NOTOWNED															"You do not own this item."
#define ERROR_JOB																"You don't have the job required to do this."
#define ERROR_CONNECTED															"The player that you are requesting isn't connected."


//==============================================================================
//          -- > Server Limits
//==============================================================================
#define MAX_VEH                                                      			200
#define MAX_FACTIONS                                                            10
#define MAX_HOUSES                                                              100
#define MAX_BIZ                                                                 100
#define MAX_ICONS                                                               50
#define MAX_OBJECTZ                                                             5000
#define MAX_JOBS                                                                5

//==============================================================================
#define PAYDAY_STANDARD                                                         250
#define PAYDAY_FACTION	                                                        300
#define PAYDAY_DONATOR	                                                        2500
#define PAYDAY_ADMIN	                                                        3750
#define PAYDAY_XP_STANDARD                                                      1
#define PAYDAY_XP_BIZ                                                           2
#define PAYDAY_XP_FACTION                                                       1
//==============================================================================
#define Range_VShort                                                            4.0
#define Range_Short                                                             15.0
#define Range_Normal                                                            20.0
#define Range_Long                                                              40.0
#define Range_VLong                                                             100.0   


#define SPLITLENGTH 118

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




//==============================================================================
//          -- > Colors
//==============================================================================
#define COL_WHITE                                                               "{FFFFFF}"
#define COL_RED                                                                 "{F81414}"
#define COL_GREEN                                                               "{00FF22}"
#define COL_BLUE                                                                "{00C0FF}"
#define COL_LBLUE                                                               "{D3DCE3}"
#define COL_ORANGE                                                              "{FFAF00}"
#define COL_CYAN                                                                "{00FFEE}"
#define COL_BLACK                                                               "{0E0101}"
#define COL_GRAY                                                                "{C3C3C3}"
#define COL_DGREEN                                                              "{336633}"


#define COLOR_BLUE                                                              0x0000FFFF
#define COLOR_LGREEN                                                            0x00FF00FF
#define COLOR_YELLOW                                                            0xFFFF00FF
#define COLOR_BLACK                                                             0x000000FF
#define COLOR_GRAY                                                              0xC0C0C0FF
#define COLOR_WHITE                                                             0xFFFFFFFF
#define COLOR_GREY                                                              0xAFAFAFAA
#define COLOR_LBLUE                                                             0x3C3176AA
#define COLOR_MBLUE                                                             0x2E37FEAA
#define COLOR_DGREEN                                                            0x007200AA
#define COLOR_RP                                                                0xC2A2DAAA


#define COLOR_AQUA                                                               0x00FFFFFF
#define COLOR_AQUAMARINE                                                         0x7FFFD4FF
#define COLOR_AZURE                                                              0xF0FFFFFF
#define COLOR_BEIGE                                                              0xF5F5DCFF
#define COLOR_BISQUE                                                             0xFFE4C4FF
#define COLOR_BLACK                                                              0x000000FF
#define COLOR_BLANCHEDALMOND                                                     0xFFEBCDFF
#define COLOR_BLUE                                                               0x0000FFFF
#define COLOR_BLUEVIOLET                                                         0x8A2BE2FF
#define COLOR_BROWN                                                              0xA52A2AFF
#define COLOR_BURLYWOOD                                                          0xDEB887FF
#define COLOR_BUTTONFACE                                                         0xF0F0F0FF
#define COLOR_BUTTONHIGHLIGHT                                                    0xFFFFFFFF
#define COLOR_BUTTONSHADOW                                                       0xA0A0A0FF
#define COLOR_CADETBLUE                                                          0x5F9EA0FF
#define COLOR_CHARTREUSE                                                         0x7FFF00FF
#define COLOR_CHOCOLATE                                                          0xD2691EFF
#define COLOR_CORAL                                                              0xFF7F50FF
#define COLOR_CORNFLOWERBLUE                                                     0x6495EDFF
#define COLOR_CORNSILK                                                           0xFFF8DCFF
#define COLOR_CRIMSON                                                            0xDC143CFF
#define COLOR_CYAN                                                               0x00FFFFFF
#define COLOR_DARKBLUE                                                           0x00008BFF
#define COLOR_DARKCYAN                                                           0x008B8BFF
#define COLOR_DARKGOLDENROD                                                      0xB8860BFF
#define COLOR_DARKGRAY                                                           0xA9A9A9FF
#define COLOR_DARKGREEN                                                          0x006400FF
#define COLOR_DARKKHAKI                                                          0xBDB76BFF
#define COLOR_DARKMAGENTA                                                        0x8B008BFF
#define COLOR_DARKOLIVEGREEN                                                     0x556B2FFF
#define COLOR_DARKORANGE                                                         0xFF8C00FF
#define COLOR_DARKORCHID                                                         0x9932CCFF
#define COLOR_DARKRED                                                            0x8B0000FF
#define COLOR_DARKSALMON                                                         0xE9967AFF
#define COLOR_DARKSEAGREEN                                                       0x8FBC8BFF
#define COLOR_DARKSLATEBLUE                                                      0x483D8BFF
#define COLOR_DARKSLATEGRAY                                                      0x2F4F4FFF
#define COLOR_DARKTURQUOISE                                                      0x00CED1FF
#define COLOR_DARKVIOLET                                                         0x9400D3FF
#define COLOR_DEEPPINK                                                           0xFF1493FF
#define COLOR_DEEPSKYBLUE                                                        0x00BFFFFF
#define COLOR_DESKTOP                                                            0x000000FF
#define COLOR_DIMGRAY                                                            0x696969FF
#define COLOR_DODGERBLUE                                                         0x1E90FFFF
#define COLOR_FIREBRICK                                                          0xB22222FF
#define COLOR_FLORALWHITE                                                        0xFFFAF0FF
#define COLOR_FORESTGREEN                                                        0x228B22FF
#define COLOR_FUCHSIA                                                            0xFF00FFFF
#define COLOR_GAINSBORO                                                          0xDCDCDCFF
#define COLOR_GHOSTWHITE                                                         0xF8F8FFFF
#define COLOR_GOLD                                                               0xFFD700FF
#define COLOR_GOLDENROD                                                          0xDAA520FF
#define COLOR_GRAYTEXT                                                           0x808080FF
#define COLOR_GREEN                                                              0x008000FF
#define COLOR_GREENYELLOW                                                        0xADFF2FFF
#define COLOR_HIGHLIGHT                                                          0x3399FFFF
#define COLOR_HIGHLIGHTTEXT                                                      0xFFFFFFFF
#define COLOR_HONEYDEW                                                           0xF0FFF0FF
#define COLOR_HOTPINK                                                            0xFF69B4FF
#define COLOR_HOTTRACK                                                           0x0066CCFF
#define COLOR_INDIANRED                                                          0xCD5C5CFF
#define COLOR_INDIGO                                                             0x4B0082FF
#define COLOR_INFO                                                               0xFFFFE1FF
#define COLOR_INFOTEXT                                                           0x000000FF
#define COLOR_IVORY                                                              0xFFFFF0FF
#define COLOR_KHAKI                                                              0xF0E68CFF
#define COLOR_LAVENDER                                                           0xE6E6FAFF
#define COLOR_LAVENDERBLUSH                                                      0xFFF0F5FF
#define COLOR_LAWNGREEN                                                          0x7CFC00FF
#define COLOR_LEMONCHIFFON                                                       0xFFFACDFF
#define COLOR_LIGHTBLUE                                                          0xADD8E6FF
#define COLOR_LIGHTCORAL                                                         0xF08080FF
#define COLOR_LIGHTCYAN                                                          0xE0FFFFFF
#define COLOR_LIGHTGOLDENRODYELLOW                                               0xFAFAD2FF
#define COLOR_LIGHTGRAY                                                          0xD3D3D3FF
#define COLOR_LIGHTGREEN                                                         0x90EE90FF
#define COLOR_LIGHTPINK                                                          0xFFB6C1FF
#define COLOR_LIGHTSALMON                                                        0xFFA07AFF
#define COLOR_LIGHTSEAGREEN                                                      0x20B2AAFF
#define COLOR_LIGHTSKYBLUE                                                       0x87CEFAFF
#define COLOR_LIGHTSLATEGRAY                                                     0x778899FF
#define COLOR_LIGHTSTEELBLUE                                                     0xB0C4DEFF
#define COLOR_LIGHTYELLOW                                                        0xFFFFE0FF
#define COLOR_LIME                                                               0x00FF00FF
#define COLOR_LIMEGREEN                                                          0x32CD32FF
#define COLOR_LINEN                                                              0xFAF0E6FF
#define COLOR_MAGENTA                                                            0xFF00FFFF
#define COLOR_MAROON                                                             0x800000FF
#define COLOR_MEDIUMAQUAMARINE                                                   0x66CDAAFF
#define COLOR_MEDIUMBLUE                                                         0x0000CDFF
#define COLOR_MEDIUMORCHID                                                       0xBA55D3FF
#define COLOR_MEDIUMPURPLE                                                       0x9370DBFF
#define COLOR_MEDIUMSEAGREEN                                                     0x3CB371FF
#define COLOR_MEDIUMSLATEBLUE                                                    0x7B68EEFF
#define COLOR_MEDIUMSPRINGGREEN                                                  0x00FA9AFF
#define COLOR_MEDIUMTURQUOISE                                                    0x48D1CCFF
#define COLOR_MEDIUMVIOLETRED                                                    0xC71585FF
#define COLOR_MIDNIGHTBLUE                                                       0x191970FF
#define COLOR_MINTCREAM                                                          0xF5FFFAFF
#define COLOR_MISTYROSE                                                          0xFFE4E1FF
#define COLOR_MOCCASIN                                                           0xFFE4B5FF
#define COLOR_NAVAJOWHITE                                                        0xFFDEADFF
#define COLOR_NAVY                                                               0x000080FF
#define COLOR_OLDLACE                                                            0xFDF5E6FF
#define COLOR_OLIVE                                                              0x808000FF
#define COLOR_OLIVEDRAB                                                          0x6B8E23FF
#define COLOR_ORANGE                                                             0xFFA500FF
#define COLOR_ORANGERED                                                          0xFF4500FF
#define COLOR_ORCHID                                                             0xDA70D6FF
#define COLOR_PALEGOLDENROD                                                      0xEEE8AAFF
#define COLOR_PALEGREEN                                                          0x98FB98FF
#define COLOR_PALETURQUOISE                                                      0xAFEEEEFF
#define COLOR_PALEVIOLETRED                                                      0xDB7093FF
#define COLOR_PAPAYAWHIP                                                         0xFFEFD5FF
#define COLOR_PEACHPUFF                                                          0xFFDAB9FF
#define COLOR_PERU                                                               0xCD853FFF
#define COLOR_PINK                                                               0xFFC0CBFF
#define COLOR_PLUM                                                               0xDDA0DDFF
#define COLOR_POWDERBLUE                                                         0xB0E0E6FF
#define COLOR_PURPLE                                                             0x800080FF
#define COLOR_RED                                                                0xFF0000FF
#define COLOR_ROSYBROWN                                                          0xBC8F8FFF
#define COLOR_ROYALBLUE                                                          0x4169E1FF
#define COLOR_SADDLEBROWN                                                        0x8B4513FF
#define COLOR_SALMON                                                             0xFA8072FF
#define COLOR_SANDYBROWN                                                         0xF4A460FF
#define COLOR_SEAGREEN                                                           0x2E8B57FF
#define COLOR_SEASHELL                                                           0xFFF5EEFF
#define COLOR_SIENNA                                                             0xA0522DFF
#define COLOR_SILVER                                                             0xC0C0C0FF
#define COLOR_SKYBLUE                                                            0x87CEEBFF
#define COLOR_SLATEBLUE                                                          0x6A5ACDFF
#define COLOR_SLATEGRAY                                                          0x708090FF
#define COLOR_SNOW                                                               0xFFFAFAFF
#define COLOR_SPRINGGREEN                                                        0x00FF7FFF
#define COLOR_STEELBLUE                                                          0x4682B4FF
#define COLOR_TAN                                                                0xD2B48CFF
#define COLOR_TEAL                                                               0x008080FF
#define COLOR_THISTLE                                                            0xD8BFD8FF
#define COLOR_TOMATO                                                             0xFF6347FF
#define COLOR_TRANSPARENT                                                        0xFFFFFF00
#define COLOR_TURQUOISE                                                          0x40E0D0FF
#define COLOR_VIOLET                                                             0xEE82EEFF
#define COLOR_WHEAT                                                              0xF5DEB3FF
#define COLOR_WHITE                                                              0xFFFFFFFF
#define COLOR_WINDOWTEXT                                                         0x000000FF
#define COLOR_YELLOW                                                             0xFFFF00FF
#define COLOR_YELLOWGREEN                                                        0x9ACD32FF
#define STEALTH_ORANGE                                                           0xFF880000
#define STEALTH_OLIVE                                                            0x66660000
#define STEALTH_GREEN                                                            0x33DD1100
#define STEALTH_PINK                                                             0xFF22EE00
#define STEALTH_BLUE                                                             0x0077BB00
