/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


// Check if we need more Balls on the board
if(instance_number(objBallParent) < global.maxBalls) {
	show_debug_message("Creating new ball!"); // DEBUG MICHA TODO
	var ballTypeToSpawn = choose(objDiscoBall, objDiscoBall, objDiscoBall); // Randomly picked from comma-separated list of ball types
	var newBall = instance_create_layer(x, y, "Instances", ballTypeToSpawn);
	newBall.direction = irandom(359)
	newBall.speed = random_range(1, 3);
}

// Check again in N seconds
alarm[0] = random_range(global.minDelayToCheckForNewBalls, global.maxDelayToCheckForNewBalls);


/*

	global.maxBalls = 10;
	global.minDelayToCheckForNewBalls = 1;
	global.maxDelayToCheckForNewBalls = 3;
	global.minBallStartSpeed = 1;
	global.maxBallStartSpeed = 3;
*/