/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


// The variables in the folowing section are defined in "Variable Definitions"

/*
bodyWidth = 64
bodyHeight = 24
bodyAngle = -10; // Represents the angle that the right end of the paddle points toward, -90 to 90

bodySprite = sprPaddleBaton
leftEndSprite = sprPaddleLeftEnd
rightEndSprite = sprPaddleRightEnd
blendColor = c_white;
blendColorAlpha = 0.8;

bodyAngleMatchesMovement = true;

movementSpeed = 3.5;
movementAngle = 30;
movementRange = 60; // Total distance from the start point that the paddle can move out (full range is x2)

playerNumber = 1; // 0 is AI, 1 is player 1 (left/right), 2 is player 2 (a/d)


shouldDrawPath = true;
pathColor = scribble_rgb_to_bgr(0x222222);
*/
//bodyWidth = 50
//bodyHeight = 50
//bodyAngle = 90;
//bodyAngleMatchesMovement = false;
//movementAngle = 30;

//characters = [sprCharacter1, sprCharacter2, sprCharacter3, sprCharacter4];

for(var i = 0; i < 4; i++) {
	characters[i] = choose(sprCharacter1, sprCharacter2, sprCharacter3, sprCharacter4, sprCharacter5, sprCharacter6, sprCharacter7, sprCharacter8);
}



////////////////////////////////////
/// Internal variables
homeX = x;
homeY = y;

needsVectorRecalculation = true;

// Override bodyAngle with the movementAngle if requested
if(bodyAngleMatchesMovement)
	bodyAngle = movementAngle;

// Convert this to call object/struct's variables or methods, or a script
if(playerNumber == 1) {
	rightKey = vk_right;
	leftKey = vk_left;
} else if(playerNumber == 2) {
	rightKey = ord("A");
	leftKey = ord("D");
} else {
	// AI player, but give it a key anyway for now
	rightKey = vk_control;
	leftKey = vk_control;
}