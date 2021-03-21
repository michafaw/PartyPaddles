// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrSetPlayerGlobals(){
	
global.playerNumbers = ["P1","P2","P3","P4","P5","P6","P7","P8"];
global.playerCharacters = [sprCharacter1,sprCharacter2,sprCharacter3,sprCharacter4,sprCharacter5,sprCharacter6,sprCharacter7,sprCharacter8];
global.playerColors = [c_fuchsia, c_aqua, c_yellow, c_red, c_lime, c_blue, c_orange, c_white];

}