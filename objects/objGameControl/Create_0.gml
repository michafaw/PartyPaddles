/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

shouldShowStartPhrase = true;
startPhraseDisplayTime = 1*room_speed;

alarm[0] = startPhraseDisplayTime;
