/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


// The spawner will check every N seconds if there are less than minimumBalls and launch a new one
// "N seconds" = a random time between global.minDelayToCheckForNewBalls and max

/*
// These are the globals used by this object
	global.gameStartDelay = 1*room_speed;
	global.maxBalls = 10;
	global.minDelayToCheckForNewBalls = 1;
	global.maxDelayToCheckForNewBalls = 3;
	global.minBallStartSpeed = 1;
	global.maxBallStartSpeed = 3;
*/


alarm[0] = global.gameStartDelay;