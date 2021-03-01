/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


// Check if we need more Balls on the board
if(instance_number(objBallParent) < global.maxBalls) {
	show_debug_message("Creating new ball!"); // DEBUG MICHA TODO
	var ballTypeToSpawn = choose(objDiscoBall, objDiscoBall, objDiscoBall); // Randomly picked from comma-separated list of ball types
	var newBall = instance_create_layer(x, y, "Instances", ballTypeToSpawn);
	// Nice addition to add to the line above - Move the ball backwards along its path so the player has more time to react to a new ball -- FUTURE TODO
	with(newBall.id) {
		
		var ballImpulse = random_range(global.minBallStartSpeed, global.maxBallStartSpeed)
		//var ballAngle = irandom_range(0, 359); // Completely random
		var ballAngle = irandom_range(0, 7) * 45 + 0.5*45; // Targeted at players
		ballAngle += irandom_range(-10, 10); // Add some variance to the angle
		var impulseX = lengthdir_x(ballImpulse, ballAngle);
		var impulseY = lengthdir_y(ballImpulse, ballAngle);
		
		physics_apply_impulse(x, y, impulseX, impulseY);
	}
}

// Check again in N seconds
//alarm[0] = random_range(global.minDelayToCheckForNewBalls, global.maxDelayToCheckForNewBalls);
alarm[0] = 0.5*room_speed

/*

	global.maxBalls = 10;
	global.minDelayToCheckForNewBalls = 1;
	global.maxDelayToCheckForNewBalls = 3;
	global.minBallStartSpeed = 1;
	global.maxBallStartSpeed = 3;
*/