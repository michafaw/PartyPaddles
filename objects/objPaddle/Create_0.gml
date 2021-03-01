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

controllerNumber = 1; // 0 is AI, 1 is player 1 (left/right), 2 is player 2 (a/d)


shouldDrawPath = true;
pathColor = scribble_rgb_to_bgr(0x222222);
*/


// Note to Scott and future Micha:
//   "Variable Definitions" are applied before the Create event runs (GMS docs are not clear about it)
// Debug overrides
//bodyWidth = 50
//bodyHeight = 50
//bodyAngle = 90;
//bodyAngleMatchesMovement = false;
//movementAngle = 30;

var availableCharacters = [sprCharacter1, sprCharacter2, sprCharacter3, sprCharacter4, sprCharacter5, sprCharacter6, sprCharacter7, sprCharacter8];
for(var i = 0; i < 4; i++) {
	// With a little bit of "where is this in the array" we could make the 
	//   first character be the player's character (as party leader) -- Future TODO
	
	var numChoices = array_length(availableCharacters);
	var choice = irandom(numChoices - 1); // irandom is from 0 to N, including N
	characters[i] = availableCharacters[choice];
	array_delete(availableCharacters, choice, 1);
}


////////////////////////////////////
/// Internal variables
homeX = x;
homeY = y;

isMoving = false;
currMovementDirection = 0; // Used to help face the sprites based on the direction of the paddle's movement

blendColor = global.playerColors[playerNumber-1];

needsVectorRecalculation = true;

// Override bodyAngle with the movementAngle if requested
if(bodyAngleMatchesMovement)
	bodyAngle = movementAngle;
	
 // Number of frames a paddle has to wait to reverse direction
// -1 = left, 0 is nothing, 1 is right
var numSkidFrames = 10;
lastAIMove = array_create(numSkidFrames, 0); 

// Convert this to call object/struct's variables or methods, or a script
if(controllerNumber == 1) {
	rightKey = vk_right;
	leftKey = vk_left;
} else if(controllerNumber == 2) {
	rightKey = ord("D");
	leftKey = ord("A");
} else if(controllerNumber == 3) {
	rightKey = ord("O");
	leftKey = ord("P");
} else if(controllerNumber == 4) {
	rightKey = ord("H");
	leftKey = ord("K");
} else {
	// AI player, but give it a key anyway for now
	rightKey = vk_control;
	leftKey = vk_control;
}