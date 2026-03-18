// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -1; // obj_explode
global.__objectDepths[1] = 0; // obj_arrows
global.__objectDepths[2] = 0; // obj_player1_car
global.__objectDepths[3] = 0; // obj_player2car
global.__objectDepths[4] = 0; // obj_solid_controll
global.__objectDepths[5] = 2; // obj_skidmark
global.__objectDepths[6] = -2; // obj_board
global.__objectDepths[7] = -100; // obj_border
global.__objectDepths[8] = -100; // spr_wall
global.__objectDepths[9] = 0; // obj_pole
global.__objectDepths[10] = 0; // object41
global.__objectDepths[11] = 1; // obj_smoke
global.__objectDepths[12] = 0; // obj_path
global.__objectDepths[13] = 0; // tyre
global.__objectDepths[14] = -1000001; // obj_points
global.__objectDepths[15] = -1000001; // obj_megascore
global.__objectDepths[16] = -1000001; // obj_crash
global.__objectDepths[17] = -1000001; // obj_scoreflash
global.__objectDepths[18] = 1000; // obj_dirt_parent
global.__objectDepths[19] = 1000; // obj_dirt_thingo
global.__objectDepths[20] = 1000; // wall
global.__objectDepths[21] = 0; // dirt_sml
global.__objectDepths[22] = 0; // dirt_big
global.__objectDepths[23] = 0; // obj_solids
global.__objectDepths[24] = -2; // obj_light
global.__objectDepths[25] = -2; // light_2
global.__objectDepths[26] = 0; // light_goto
global.__objectDepths[27] = 0; // light_mask
global.__objectDepths[28] = 1; // obj_light_carshadow
global.__objectDepths[29] = 0; // obj_cone
global.__objectDepths[30] = 1; // obj_dirt_spray
global.__objectDepths[31] = -1; // object0
global.__objectDepths[32] = 0; // object1
global.__objectDepths[33] = -1000000; // obj_lightcontroller
global.__objectDepths[34] = -90000; // obj_lamp
global.__objectDepths[35] = 0; // obj_lamp2
global.__objectDepths[36] = 0; // obj_explosion
global.__objectDepths[37] = 1; // obj_person
global.__objectDepths[38] = 0; // obj_torch
global.__objectDepths[39] = 0; // obj_dropped_bl
global.__objectDepths[40] = 0; // obj_dropped_br
global.__objectDepths[41] = 0; // obj_dropped_fl
global.__objectDepths[42] = 0; // obj_dropped_fr
global.__objectDepths[43] = -1; // obj_soccerball
global.__objectDepths[44] = 0; // ball_rebound
global.__objectDepths[45] = 0; // lowr_score
global.__objectDepths[46] = 0; // topr_score
global.__objectDepths[47] = -99999; // obj_centre


global.__objectNames[0] = "obj_explode";
global.__objectNames[1] = "obj_arrows";
global.__objectNames[2] = "obj_player1_car";
global.__objectNames[3] = "obj_player2car";
global.__objectNames[4] = "obj_solid_controll";
global.__objectNames[5] = "obj_skidmark";
global.__objectNames[6] = "obj_board";
global.__objectNames[7] = "obj_border";
global.__objectNames[8] = "spr_wall";
global.__objectNames[9] = "obj_pole";
global.__objectNames[10] = "object41";
global.__objectNames[11] = "obj_smoke";
global.__objectNames[12] = "obj_path";
global.__objectNames[13] = "tyre";
global.__objectNames[14] = "obj_points";
global.__objectNames[15] = "obj_megascore";
global.__objectNames[16] = "obj_crash";
global.__objectNames[17] = "obj_scoreflash";
global.__objectNames[18] = "obj_dirt_parent";
global.__objectNames[19] = "obj_dirt_thingo";
global.__objectNames[20] = "wall";
global.__objectNames[21] = "dirt_sml";
global.__objectNames[22] = "dirt_big";
global.__objectNames[23] = "obj_solids";
global.__objectNames[24] = "obj_light";
global.__objectNames[25] = "light_2";
global.__objectNames[26] = "light_goto";
global.__objectNames[27] = "light_mask";
global.__objectNames[28] = "obj_light_carshadow";
global.__objectNames[29] = "obj_cone";
global.__objectNames[30] = "obj_dirt_spray";
global.__objectNames[31] = "object0";
global.__objectNames[32] = "object1";
global.__objectNames[33] = "obj_lightcontroller";
global.__objectNames[34] = "obj_lamp";
global.__objectNames[35] = "obj_lamp2";
global.__objectNames[36] = "obj_explosion";
global.__objectNames[37] = "obj_person";
global.__objectNames[38] = "obj_torch";
global.__objectNames[39] = "obj_dropped_bl";
global.__objectNames[40] = "obj_dropped_br";
global.__objectNames[41] = "obj_dropped_fl";
global.__objectNames[42] = "obj_dropped_fr";
global.__objectNames[43] = "obj_soccerball";
global.__objectNames[44] = "ball_rebound";
global.__objectNames[45] = "lowr_score";
global.__objectNames[46] = "topr_score";
global.__objectNames[47] = "obj_centre";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for