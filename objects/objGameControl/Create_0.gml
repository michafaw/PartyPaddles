/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


shouldShowStartPhrase = true;
startPhraseDisplayTime = 1*room_speed;

alarm[0] = startPhraseDisplayTime;



global.playerScores = [0,0,0,0,0,0,0,0];
global.playerCharacters = [sprCharacter1,sprCharacter2,sprCharacter3,sprCharacter4,sprCharacter5,sprCharacter6,sprCharacter7,sprCharacter8];
global.playerColors = [c_blue, c_aqua, c_fuchsia, c_lime, c_maroon, c_orange, c_yellow, c_purple];
global.allPlayerNumbers = [1,2,3,4,5,6,7,8];