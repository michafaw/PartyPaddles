/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

/// Update the paddle's internal math

// Vector that represents the length/direction of the paddle at its current rotation/size
// In the direction of its "right" end

bodyVectorX = lengthdir_x(width, bodyAngle)
bodyVectorY = lengthdir_y(width, bodyAngle)


// Only use the "movementAngle" value if we've told it to override
var mvtAngle;
if(movementIsSameAsBodyAngle)
	mvtAngle = bodyAngle
else
	mvtAngle = movementAngle;
	
movementVectorX = lengthdir_x(movementSpeed, mvtAngle)
movementVectorY = lengthdir_y(movementSpeed, mvtAngle)


if(keyboard_check(rightKey)) {
	x += movementVectorX;
	y += movementVectorY;
} else if(keyboard_check(leftKey)) {
	x -= movementVectorX;
	y -= movementVectorY;
}


