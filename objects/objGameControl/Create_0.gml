/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


shouldShowStartPhrase = true;
startPhraseDisplayTime = 1*room_speed;


global.isGameOver = false;
winnerBannerDisplayTime = 3*room_speed;
shouldShowWinnerBanner = false;
canExitGameOver = false;
winnerName = "";


global.playerScores = [0,0,0,0,0,0,0,0];
// Player configuration (characters/colors/etc.) has been moved to scrSetPlayerGlobals
//    Easy navigation: Right-click on the script name and "Show Resource" (or F1)
scrSetPlayerGlobals();

alarm[0] = startPhraseDisplayTime;


