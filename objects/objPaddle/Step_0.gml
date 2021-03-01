/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


if(global.reduceGraphics) {
	if(instance_number(objPaddle) > 1) {
		with(instance_find(objPaddle, 0)) {
			instance_destroy();	
		}
	}
}

if(needsVectorRecalculation) {
	needsVectorRecalculation = false;
/////////////////////////////////////////////
/// Update the paddle's internal math

// Vector that represents the length/direction of the paddle at its current rotation/size
// In the direction of its "right" end


bodyVectorX = lengthdir_x(bodyWidth, bodyAngle)
bodyVectorY = lengthdir_y(bodyWidth, bodyAngle)

movementVectorX = lengthdir_x(movementSpeed, movementAngle)
movementVectorY = lengthdir_y(movementSpeed, movementAngle)

/// End of "internal math" block
/////////////////////////////////////////////
}

// Movement
var xx = x;
var yy = y;

var pressRight = false;
var pressLeft = false;

var isAIPlayer = controllerNumber == 0;

if(!isAIPlayer) {
	// Keyboard player
	pressRight = keyboard_check(rightKey);
	pressLeft = keyboard_check(leftKey);
} else {
	// AI player	
	var ball = instance_nearest(x,y, objBallParent);
	
	if(ball != noone) {
		
		var distanceNow = point_distance(x, y, ball.x, ball.y)
		var distanceRight = point_distance(x+movementVectorX, y+movementVectorY, ball.x, ball.y)
		
		if(distanceRight < distanceNow) {
			pressRight = true;	
		} else {
			pressLeft = true;
		}
		
		
		// Slow down the jitters a little bit
		var didMoveRight = false;
		var didMoveLeft = false;
		var lastMoveCount = array_length(lastAIMove);
		for(var i = 0; i < lastMoveCount; i++) {
			if(lastAIMove[i] == 1)
				didMoveRight = true;
			else if(lastAIMove[i] == -1)
				didMoveLeft = true;
		}
		if(pressRight && didMoveLeft)
			pressRight = false;
		if(pressLeft && didMoveRight)
			pressLeft = false;
		
	} 
}

if(pressRight) {
	xx += movementVectorX;
	yy += movementVectorY;
	isMoving = true;
	currMovementDirection = movementAngle;
}else if(pressLeft) {
	xx -= movementVectorX;
	yy -= movementVectorY;
	isMoving = true;
	currMovementDirection = movementAngle + 180;
} else {
	isMoving = false; // If we move isMoving below to check aginst canMove, it'll prevent them from "walking against the wall"
}


var canMove = true;
// Don't allow movement beyond the movementRange
if(point_distance(homeX, homeY, xx, yy) > movementRange)
	canMove = false;	

//if(canMove && !global.isGameOver) { // Version to disable the paddles on game over
if(canMove) {
	phy_position_x = xx;
	phy_position_y = yy;
	//x = xx;
	//y = yy;
}

if(isAIPlayer) {
	// Update the de-jitter data for the AI player
	
	array_delete(lastAIMove, 0, 1);
	if(pressRight && canMove)
		array_push(lastAIMove, 1);
	else if(pressLeft && canMove)
		array_push(lastAIMove, -1);
	else
		array_push(lastAIMove, 0);
}