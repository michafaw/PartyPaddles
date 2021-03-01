/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

audio_stop_sound(Short_Action_Game_Loop__1);
audio_stop_sound(Short_Dramatic_Pulsing_Loop__1);

audio_play_sound(choose(Short_Action_Game_Loop__1, Short_Dramatic_Pulsing_Loop__1), 10, true);

shouldShowStartPhrase = true;
startPhraseDisplayTime = 1*room_speed;

alarm[0] = startPhraseDisplayTime;


global.playerScores = [0,0,0,0,0,0,0,0];
// Player configuration (characters/colors/etc.) has been moved to scrSetPlayerGlobals
//    Easy navigation: Right-click on the script name and "Show Resource" (or F1)
scrSetPlayerGlobals();

