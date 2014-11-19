/*
	I would appreciate it if you add my name in the credits if you use this fs in your server
 							      ______   ____      ______      ____ ___
								   |    | |      /\   |   |   | |     |__|
								   |    | |---- /--\  |   |---| |---- | \
  							      _|____| |____/    \ |   |   | |____ |  \
  							       				 DARE TO DIE
*/
//============================================================================//
#include <a_samp>
//============================================================================//
#define SKINMENU 1337
//============================================================================//
new skins[289][17]=// Random skin options.
{
0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,
34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,
51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,
68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,
85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,
102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,
119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,
136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,
153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,
170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,
187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,
204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,
221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,
238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,
255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,
272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288
};
//============================================================================//
public OnFilterScriptInit()
{
	print("\n--------------------------------------");//donot remove these
	print(" DEATHER's SKIN SELECTOR FS");//donot remove these
	print("--------------------------------------\n");//donot remove these
	return 1;
}
//============================================================================//
public OnFilterScriptExit()
{
	return 1;
}
//============================================================================//
public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/skin", cmdtext, true) == 0)
	{
	if(IsPlayerAdmin(playerid))// Only admins can use this command. If you want all the players to use it, then remove the lines 31, 32 & 35.
	{
		ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores\nRandom Skin","Select","Cancel");
		return 1;
	}
	}
	return 0;
}
//============================================================================//
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == SKINMENU && response)
	{
	if(listitem == 0)
	{
	ShowPlayerDialog(playerid, SKINMENU+1, DIALOG_STYLE_LIST,"Ballas Skin","Ballas 1\nBallas 2\nBallas 3\nBack","Apply", "Cancel");
	}
	if(listitem == 1)
	{
	ShowPlayerDialog(playerid, SKINMENU+2, DIALOG_STYLE_LIST,"Beach Skin","Visitor 1\nVisitor 2\nVisitor 3\nVisitor 4\nVisitor 5\nVisitor 6\nVisitor 7\nVisitor 8\nVisitor 9\nVisitor 10\nVisitor 11\nBack","Apply", "Cancel");
	}
	if(listitem == 2)
	{
	ShowPlayerDialog(playerid, SKINMENU+3, DIALOG_STYLE_LIST,"Bikers Skin","Biker\nBiker A\nBiker B\nBiker C\nBack","Apply", "Cancel");
	}
	if(listitem == 3)
	{
	ShowPlayerDialog(playerid, SKINMENU+4, DIALOG_STYLE_LIST,"DaNang Skin","DaNang 1\nDaNang 2\nDaNang 3\n Back","Apply", "Cancel");
	}
	if(listitem == 4)
	{
	ShowPlayerDialog(playerid, SKINMENU+5, DIALOG_STYLE_LIST,"Farm Skin","Farm inhabitant 1\nFarm inhabitant 2\nFarm inhabitant 3\nFarm inhabitant 4\nFarm inhabitant 5\nFarm inhabitant 6\nFarm inhabitant 7\nFarm inhabitant 8\nFarm inhabitant 9\nFarm inhabitant 10\nFarm inhabitant 11\nFarm inhabitant 12\nFarm inhabitant 13\nFarm inhabitant 14\nFarmer 1\nFarmer 2\nFarmer 3\nFarmer 4\nFarmer 5\nFarmer 6\nFarmer 7\nFarmer 8\nFarmer 9\nBack","Apply", "Cancel");
	}
	if(listitem == 5)
	{
	ShowPlayerDialog(playerid, SKINMENU+6, DIALOG_STYLE_LIST,"Girlfriends Skin","Denise Robinson\nBarbara Schternvart\nHelena Wankstein\nMichelle Cannes\nKatie Zhan\nMillie Perkins\nBack","Apply", "Cancel");
	}
	if(listitem == 6)
	{
	ShowPlayerDialog(playerid, SKINMENU+7, DIALOG_STYLE_LIST,"Groove Skin","CJ\nFam 1\nFam 2\nFam 3\nBack","Apply", "Cancel");
	}
	if(listitem == 7)
	{
	ShowPlayerDialog(playerid, SKINMENU+8, DIALOG_STYLE_LIST,"Mafia Skin","Russian Mafia 1\nRussian Mafia 2\nRussian Mafia 3\nMafia 1\nMafia 2\nMafia 3\nMafia 4\nBack","Apply", "Cancel");
	}
	if(listitem == 8)
	{
	ShowPlayerDialog(playerid, SKINMENU+9, DIALOG_STYLE_LIST,"New Skin","Tenpenny\nPulaski\nHernandez\nDwayne\nBig Smoke\nSweet\nRyder\nMafia Boss\nBack","Apply", "Cancel");
	}
	if(listitem == 9)
	{
	ShowPlayerDialog(playerid, SKINMENU+10, DIALOG_STYLE_LIST,"Normal Peds Skin","Normal Ped1\nNormal Ped2\nNormal Ped3\nNormal Ped4\nNormal Ped5\nNormal Ped6\nNormal Ped7\nNormal Ped8\nNormal Ped9\nNormal Ped10\nNormal Ped11\nNormal Ped12\nNormal Ped13\nNormal Ped14\nNormal Ped15\nBack","Apply", "Cancel");
	}
	if(listitem == 10)
	{
	ShowPlayerDialog(playerid, SKINMENU+11, DIALOG_STYLE_LIST,"Others Skin","Homeless 1\nHomeless 2\nHomeless 3\nHomeless 4\nHomeless 5\nDrug Dealer \nElvis Wannabee 1\nElvis Wannabee 2\nElvis Wannabee 3\nDriver\nPilot\nValet\nAfro American\nMechanist\nBack","Apply", "Cancel");
	}
	if(listitem == 11)
	{
	ShowPlayerDialog(playerid, SKINMENU+12, DIALOG_STYLE_LIST,"Profession Skin","Casino Worker\nOffice Worker\nDirector\nSecretary 1\nSecretary 2\nSecretary 3\nCoffee man\nCluckin' Bell\nPriest\nHotel Services \nTatoo Shop 1\nTatoo Shop 2\nAmmunation Salesman\nBusinessman\nKarate Teacher\nWell Stacked Pizza \nBurgerShot Salesman\nSecurity 1\nSecurity 2\nConstruction Worket 1\nConstruction Worker 2\nConstruction Worker 3\nClown\n Professor\nBack ","Apply", "Cancel");
	}
	if(listitem == 12)
	{
	ShowPlayerDialog(playerid, SKINMENU+13, DIALOG_STYLE_LIST,"Public Services Skin","Federal Agent 1\nFederal Agent 2\nFederal Agent 3\nFederal Agent 4\nAmbulance Personnal 1\nAmbulance Personnal 2\nAmbulance Personnal 3\nFire Brigade 1\nFire Brigade 2\nFire Brigade 3\nLSPD\nSFPD\nLVPD\nBCPD 1\nBCPD 2\nSA Bike Cop\nSWAT\nFBI\nSA Army\nBack","Apply", "Cancel");
	}
	if(listitem == 13)
	{
	ShowPlayerDialog(playerid, SKINMENU+14, DIALOG_STYLE_LIST,"Rifa Skin","Rifa 1\nRifa 2\nRifa 3\nBack","Apply", "Cancel");
	}
	if(listitem == 14)
	{
	ShowPlayerDialog(playerid, SKINMENU+15, DIALOG_STYLE_LIST,"Sports Skin","Golfer 1\nGolfer 2\nMountain Climber\nMountain Biker 1\nMountain Biker 2\nBoxer 1\nBoxer 2\nSkater\nJogger\nSkeelerer\nBack","Apply", "Cancel");
	}
	if(listitem == 15)
	{
	ShowPlayerDialog(playerid, SKINMENU+16, DIALOG_STYLE_LIST,"Triads Skin","Triad 1\nTriad 2\nTriad 3\nBack","Apply", "Cancel");
	}
	if(listitem == 16)
	{
	ShowPlayerDialog(playerid, SKINMENU+17, DIALOG_STYLE_LIST,"VLA Skin","Aztec 1\nAztec 2\nAztec 3\nBack","Apply", "Cancel");
	}
	if(listitem == 17)
	{
	ShowPlayerDialog(playerid, SKINMENU+18, DIALOG_STYLE_LIST,"Vagos Skin","LS Vagos 1\nLS Vagos 2\nLS Vagos 3\nBack","Apply", "Cancel");
	}
	if(listitem == 18)
	{
	ShowPlayerDialog(playerid, SKINMENU+19, DIALOG_STYLE_LIST,"Whores Skin","Whore 1\nWhore 2\nWhore 3\nWhore 4\nWhore 5","Apply", "Cancel");
	}
	if(listitem == 19)
	{
	new ski = random(sizeof(skins));
	SetPlayerSkin(playerid, skins[ski][0]);
	}
	return 1;
}
//=============================BALLAS===================================//
    if(dialogid == SKINMENU+1)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 102);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 103);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 104);
	}
	if(listitem == 3)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
    }
//=================================BEACH======================================//
    if(dialogid == SKINMENU+2)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 138);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 139);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 140);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 145);
	}
	if(listitem == 4)
	{
	SetPlayerSkin(playerid, 146);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid, 154);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 251);
	}
	if(listitem == 7)
	{
	SetPlayerSkin(playerid, 92);
	}
	if(listitem == 8)
	{
	SetPlayerSkin(playerid, 97);
	}
    if(listitem == 9)
	{
	SetPlayerSkin(playerid, 45);
	}
	if(listitem == 10)
	{
	SetPlayerSkin(playerid, 18);
	}
	if(listitem == 11)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//==================================BIKERS====================================//
	if(dialogid == SKINMENU+3)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 100);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 247);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 248);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 254);
	}
	if(listitem == 4)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//================================DANANG======================================//
	if(dialogid == SKINMENU+4)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 121);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 122);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 123);
	}
	if(listitem == 3)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//==================================FARM======================================//
	if(dialogid == SKINMENU+5)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 128);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 129);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 130);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 131);
	}
    if(listitem == 4)
	{
	SetPlayerSkin(playerid, 132);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid, 133);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 196);
	}
	if(listitem == 7)
	{
	SetPlayerSkin(playerid, 197);
	}
	if(listitem == 8)
	{
	SetPlayerSkin(playerid, 198);
	}
	if(listitem == 9)
	{
	SetPlayerSkin(playerid, 199);
	}
	if(listitem == 10)
	{
	SetPlayerSkin(playerid, 31);
	}
	if(listitem == 11)
	{
	SetPlayerSkin(playerid, 32);
	}
	if(listitem == 12)
	{
	SetPlayerSkin(playerid, 33);
	}
	if(listitem == 13)
	{
	SetPlayerSkin(playerid, 34);
	}
	if(listitem == 14)
	{
	SetPlayerSkin(playerid, 157);
	}
	if(listitem == 15)
	{
	SetPlayerSkin(playerid, 158);
	}
	if(listitem == 16)
	{
	SetPlayerSkin(playerid, 159);
	}
	if(listitem == 17)
	{
	SetPlayerSkin(playerid, 160);
	}
	if(listitem == 18)
	{
	SetPlayerSkin(playerid, 161);
	}
	if(listitem == 19)
	{
	SetPlayerSkin(playerid, 162);
	}
	if(listitem == 20)
	{
	SetPlayerSkin(playerid, 200);
	}
	if(listitem == 21)
	{
	SetPlayerSkin(playerid, 201);
	}
	if(listitem == 22)
	{
	SetPlayerSkin(playerid, 202);
	}
	if(listitem == 23)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//===============================GIRL FRIENDS=================================//
	if(dialogid == SKINMENU+6)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 195);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 190);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 191);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 192);
	}
	if(listitem == 4)
	{
	SetPlayerSkin(playerid, 193);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid, 194);
	}
	if(listitem == 6)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//==================================GROOVE====================================//
	if(dialogid == SKINMENU+7)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 0);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 105);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 106);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 107);
	}
	if(listitem == 4)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//=================================MAFIA======================================//
	if(dialogid == SKINMENU+8)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 111);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 112);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 113);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 124);
	}
	if(listitem == 4)
	{
	SetPlayerSkin(playerid, 125);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid, 126);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 127);
	}
	if(listitem == 7)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//=====================================NEW====================================//
	if(dialogid == SKINMENU+9)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 265);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 266);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 267);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 268);
	}
	if(listitem == 4)
	{
	SetPlayerSkin(playerid, 269);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid, 270);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 271);
	}
	if(listitem == 7)
	{
	SetPlayerSkin(playerid, 272);
	}
	if(listitem == 8)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//================================NORMAL PEDS=================================//
	if(dialogid == SKINMENU+10)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 10);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid,101);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 12);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 13);
	}
	if(listitem == 4)
	{
	SetPlayerSkin(playerid, 14);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid,143);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 144);
	}
	if(listitem == 7)
	{
	SetPlayerSkin(playerid, 17);
	}
	if(listitem == 8)
	{
	SetPlayerSkin(playerid, 170);
	}
	if(listitem == 9)
	{
	SetPlayerSkin(playerid, 180);
	}
	if(listitem == 10)
	{
	SetPlayerSkin(playerid, 184);
	}
	if(listitem == 11)
	{
	SetPlayerSkin(playerid, 75);
	}
    if(listitem == 12)
	{
	SetPlayerSkin(playerid, 216);
	}
	if(listitem == 13)
	{
	SetPlayerSkin(playerid, 22);
	}
	if(listitem == 14)
	{
	SetPlayerSkin(playerid, 226);
	}
	if(listitem == 15)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//==================================OTHERS=====================================//
	if(dialogid == SKINMENU+11)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 134);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid,135);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 137);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 212);
	}
	if(listitem == 4)
	{
	SetPlayerSkin(playerid, 230);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid,29);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 82);
	}
	if(listitem == 7)
	{
	SetPlayerSkin(playerid, 83);
	}
	if(listitem == 8)
	{
	SetPlayerSkin(playerid, 84);
	}
	if(listitem == 9)
	{
	SetPlayerSkin(playerid, 255);
	}
	if(listitem == 10)
	{
	SetPlayerSkin(playerid, 61);
	}
	if(listitem == 11)
	{
	SetPlayerSkin(playerid, 253);
	}
    if(listitem == 12)
	{
	SetPlayerSkin(playerid, 241);
	}
	if(listitem == 13)
	{
	SetPlayerSkin(playerid, 50);
	}
	if(listitem == 14)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//===============================PROFESSION===================================//
	if(dialogid == SKINMENU+12)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 11);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 141);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 147);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 148);
	}
    if(listitem == 4)
	{
	SetPlayerSkin(playerid, 150);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid, 219);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 153);
	}
	if(listitem == 7)
	{
	SetPlayerSkin(playerid, 167);
	}
	if(listitem == 8)
	{
	SetPlayerSkin(playerid, 68);
	}
	if(listitem == 9)
	{
	SetPlayerSkin(playerid,171);
	}
	if(listitem == 10)
	{
	SetPlayerSkin(playerid, 176);
	}
	if(listitem == 11)
	{
	SetPlayerSkin(playerid, 177);
	}
	if(listitem == 12)
	{
	SetPlayerSkin(playerid, 179);
	}
	if(listitem == 13)
	{
	SetPlayerSkin(playerid, 187);
	}
	if(listitem == 14)
	{
	SetPlayerSkin(playerid, 204);
	}
	if(listitem == 15)
	{
	SetPlayerSkin(playerid, 155);
	}
	if(listitem == 16)
	{
	SetPlayerSkin(playerid, 205);
	}
	if(listitem == 17)
	{
	SetPlayerSkin(playerid, 211);
	}
	if(listitem == 18)
	{
	SetPlayerSkin(playerid, 217);
	}
	if(listitem == 19)
	{
	SetPlayerSkin(playerid, 260);
	}
	if(listitem == 20)
	{
	SetPlayerSkin(playerid, 16);
	}
	if(listitem == 21)
	{
	SetPlayerSkin(playerid, 27);
	}
	if(listitem == 22)
	{
	SetPlayerSkin(playerid, 264);
	}
	if(listitem == 23)
	{
	SetPlayerSkin(playerid, 70);
	}
	if(listitem == 24)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//===================================PUBLIC===================================//
	if(dialogid == SKINMENU+13)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 163);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 164);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 165);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 166);
	}
    if(listitem == 4)
	{
	SetPlayerSkin(playerid, 274);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid, 275);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 276);
	}
	if(listitem == 7)
	{
	SetPlayerSkin(playerid, 277);
	}
	if(listitem == 8)
	{
	SetPlayerSkin(playerid, 278);
	}
	if(listitem == 9)
	{
	SetPlayerSkin(playerid, 279);
	}
	if(listitem == 10)
	{
	SetPlayerSkin(playerid, 280);
	}
	if(listitem == 11)
	{
	SetPlayerSkin(playerid, 281);
	}
	if(listitem == 12)
	{
	SetPlayerSkin(playerid, 282);
	}
	if(listitem == 13)
	{
	SetPlayerSkin(playerid, 283);
	}
	if(listitem == 14)
	{
	SetPlayerSkin(playerid, 288);
	}
	if(listitem == 15)
	{
	SetPlayerSkin(playerid, 284);
	}
	if(listitem == 16)
	{
	SetPlayerSkin(playerid, 285);
	}
	if(listitem == 17)
	{
	SetPlayerSkin(playerid, 286);
	}
	if(listitem == 18)
	{
	SetPlayerSkin(playerid, 287);
	}
	if(listitem == 19)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//====================================RIFA====================================//
 	if(dialogid == SKINMENU+14)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 173);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 174);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 175);
	}
	if(listitem == 3)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//==================================SPORTS====================================//
	if(dialogid == SKINMENU+15)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 258);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 259);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 26);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 51);
	}
    if(listitem == 4)
	{
	SetPlayerSkin(playerid, 52);
	}
	if(listitem == 5)
	{
	SetPlayerSkin(playerid, 80);
	}
	if(listitem == 6)
	{
	SetPlayerSkin(playerid, 81);
	}
	if(listitem == 7)
	{
	SetPlayerSkin(playerid, 23);
	}
	if(listitem == 8)
	{
	SetPlayerSkin(playerid, 96);
	}
	if(listitem == 9)
	{
	SetPlayerSkin(playerid, 99);
	}
	if(listitem == 10)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//=================================TRIADS=====================================//
 	if(dialogid == SKINMENU+16)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 117);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 118);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 120);
	}
	if(listitem == 3)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//=====================================VLA====================================//
 	if(dialogid == SKINMENU+17)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 114);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 115);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 116);
	}
	if(listitem == 3)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//====================================VAGOS===================================//
 	if(dialogid == SKINMENU+18)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 108);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 109);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 110);
	}
	if(listitem == 3)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
//==================================WHORES====================================//
 	if(dialogid == SKINMENU+19)
	{
	if(response)
	{
	if(listitem == 0)
	{
	SetPlayerSkin(playerid, 152);
	}
	if(listitem == 1)
	{
	SetPlayerSkin(playerid, 207);
	}
	if(listitem == 2)
	{
	SetPlayerSkin(playerid, 245);
	}
	if(listitem == 3)
	{
	SetPlayerSkin(playerid, 246);
	}
	if(listitem == 4)
	{
	SetPlayerSkin(playerid, 178);
	}
	if(listitem == 5)
	{
	ShowPlayerDialog(playerid, SKINMENU, DIALOG_STYLE_LIST, "Skin Selection Menu", "Ballas\nBeach\nBikers\nDaNang\nFarm\nGirlfriends\nGroove\nMafia\nNew\nNormal Peds\nOthers\nProfession\nPublic Services\nRifa\nSports\nTriads\nVLA\nVagos\nWhores","Select","Cancel");
	}
	}
	}
	return 1;
}
//===============================END OF SCRIPT================================//

