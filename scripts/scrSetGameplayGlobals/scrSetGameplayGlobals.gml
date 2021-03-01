// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrSetGameplayGlobals(){
	if (live_call()) return live_result;
	
	global.gameStartDelay = 1*room_speed;
	global.maxBalls = 10;
	global.minDelayToCheckForNewBalls = 1*room_speed;
	global.maxDelayToCheckForNewBalls = 3*room_speed;
	global.minBallStartSpeed = 15; // Impulse values (not pixels per frame!)
	global.maxBallStartSpeed = 25;
	
}