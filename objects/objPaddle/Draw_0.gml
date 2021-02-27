/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


var paddleImageIndex = 0;
var paddleXScale = 1.0*width/sprite_get_width(bodySprite);
var paddleYScale = 1.0*height/sprite_get_height(bodySprite);

// Debug settings, remove/comment out when done -- Micha TODO
//bodySprite = sprPaddleBaton;
//paddleImageIndex = 0;
//paddleXScale = 1
//paddleYScale = 1
//bodyAngle = 10;
//color = c_lime
//colorAlpha = 0.6;


var paddleLeftEndX = x - bodyVectorX/2; // div by 2 = half of the length of the paddle
var paddleLeftEndY = y - bodyVectorY/2;
var paddleRightEndX = x + bodyVectorX/2;
var paddleRightEndY = y + bodyVectorY/2;

// Draw the paddle and its two ends
draw_sprite_ext(bodySprite, paddleImageIndex, x, y, paddleXScale, paddleYScale, bodyAngle, color, colorAlpha);
draw_sprite_ext(leftEndSprite, paddleImageIndex, paddleLeftEndX, paddleLeftEndY, paddleXScale, paddleYScale, bodyAngle, color, colorAlpha);
draw_sprite_ext(rightEndSprite, paddleImageIndex, paddleRightEndX, paddleRightEndY, paddleXScale, paddleYScale, bodyAngle, color, colorAlpha);
