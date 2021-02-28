/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

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


// Movement
var xx = x;
var yy = y;


if(keyboard_check(rightKey)) {
	xx += movementVectorX;
	yy += movementVectorY;
} else if(keyboard_check(leftKey)) {
	xx -= movementVectorX;
	yy -= movementVectorY;
}


var canMove = true;
// Don't allow movement beyond the movementRange
if(point_distance(homeX, homeY, xx, yy) > movementRange)
	canMove = false;	

if(canMove) {
	x = xx;
	y = yy;
}