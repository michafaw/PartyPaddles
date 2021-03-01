/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


if(global.reduceGraphics) {
	draw_self()
	exit;
}


var paddleImageIndex = 0;
var paddleXScale = 1.0*bodyWidth/sprite_get_width(bodySprite);
var paddleYScale = 1.0*bodyHeight/sprite_get_height(bodySprite);

// Debug settings, remove/comment out when done -- Micha TODO
//bodySprite = sprPaddleBaton;
//paddleImageIndex = 0;
//paddleXScale = 1
//paddleYScale = 1
//bodyAngle = 10;
//blendColor = c_lime
//blendColorAlpha = 0.6;
//maintainEndSpriteAspectRatio = false


var paddleLeftEndX = x - bodyVectorX/2; // div by 2 = half of the length of the paddle
var paddleLeftEndY = y - bodyVectorY/2;
var paddleRightEndX = x + bodyVectorX/2;
var paddleRightEndY = y + bodyVectorY/2;


if(shouldDrawPath) {
	/// Draw the path the paddle can move on
	var pathWidth = 5;
	var holeRadius = 5;
	var normalizedMovementVectorX = movementVectorX/movementSpeed;
	var normalizedMovementVectorY = movementVectorY/movementSpeed;
	var rangeVectorX = normalizedMovementVectorX*movementRange;
	var rangeVectorY = normalizedMovementVectorY*movementRange;

	draw_line_width_color(homeX, homeY, homeX + rangeVectorX, homeY + rangeVectorY, pathWidth, pathColor, pathColor);
	draw_line_width_color(homeX, homeY, homeX - rangeVectorX, homeY - rangeVectorY, pathWidth, pathColor, pathColor);
	draw_circle_color(homeX + rangeVectorX, homeY + rangeVectorY, holeRadius, pathColor, pathColor, false);
	draw_circle_color(homeX - rangeVectorX, homeY - rangeVectorY, holeRadius, pathColor, pathColor, false);
}

// Draw the paddle center body)
draw_sprite_ext(bodySprite, paddleImageIndex, x, y, paddleXScale, paddleYScale, bodyAngle, blendColor, blendColorAlpha);

// Draw the two paddle ends
if(maintainEndSpriteAspectRatio) {
	// To make the endSprites maintain their aspect ratio use this code block by Scott
	// End scale should always be determined by the circle's dimensions, not the paddle length.
var circleScale = paddleYScale;
draw_sprite_ext(leftEndSprite, paddleImageIndex, paddleLeftEndX, paddleLeftEndY, circleScale, circleScale, bodyAngle, blendColor, blendColorAlpha);
draw_sprite_ext(rightEndSprite, paddleImageIndex, paddleRightEndX, paddleRightEndY, circleScale, circleScale, bodyAngle, blendColor, blendColorAlpha);
} else {
	// Use the paddle's aspect ratio (xscale/yscale)
draw_sprite_ext(leftEndSprite, paddleImageIndex, paddleLeftEndX, paddleLeftEndY, paddleXScale, paddleYScale, bodyAngle, blendColor, blendColorAlpha);
draw_sprite_ext(rightEndSprite, paddleImageIndex, paddleRightEndX, paddleRightEndY, paddleXScale, paddleYScale, bodyAngle, blendColor, blendColorAlpha);
}



// Draw some prototype characters
var leftFacing = 1;
var rightFacing = -1;
var facing = leftFacing;
var shouldFaceOnMove = false; // Enable this for facing the direction of movement, but it's not 100% working at the moment
if(isMoving && shouldFaceOnMove) {
	var normalizedAngle = (currMovementDirection+360)%360;
	if(normalizedAngle <= 90 || normalizedAngle >= 270)
		facing = rightFacing;
} else {
	if(bodyAngle < 0)
		facing = rightFacing;
}
var charVectorX = bodyVectorX/6;
var charVectorY = bodyVectorY/6;
//draw_sprite(sprCharacter1, 0, paddleLeftEndX, paddleLeftEndY);
//draw_sprite(sprCharacter1, 0, paddleRightEndX, paddleRightEndY);
//var paddleHalfLeftEndX = x - bodyVectorX/4;
//var paddleHalfLeftEndY = y - bodyVectorY/4;
//draw_sprite(characters[0], 0, x - charVectorX*3, y - charVectorY*3);
//draw_sprite(characters[1], 0, x - charVectorX*1, y - charVectorY*1);
//draw_sprite(characters[2], 0, x + charVectorX*1, y + charVectorY*1);
//draw_sprite(characters[3], 0, x + charVectorX*3, y + charVectorY*3);
draw_sprite_ext(characters[0], 0, x - charVectorX*3, y - charVectorY*3, facing, 1, 0, c_white, 1.0);
draw_sprite_ext(characters[1], 0, x - charVectorX*1, y -charVectorY*1, facing, 1, 0, c_white, 1.0);
draw_sprite_ext(characters[2], 0, x + charVectorX*1, y + charVectorY*1, facing, 1, 0, c_white, 1.0);
draw_sprite_ext(characters[3], 0, x + charVectorX*3, y + charVectorY*3, facing, 1, 0, c_white, 1.0);