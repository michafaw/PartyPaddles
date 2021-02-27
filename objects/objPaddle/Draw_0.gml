/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


var paddleImageIndex = 0;
var paddleXScale = 1.0*paddleWidth/sprite_get_width(paddleBatonSprite);
var paddleYScale = 1.0*paddleHeight/sprite_get_height(paddleBatonSprite);

// Debug settings, remove/comment out when done -- Micha TODO
//paddleBatonSprite = sprPaddleBaton;
//paddleImageIndex = 0;
paddleXScale = 1
paddleYScale = 1
paddleAngle = 20;
paddleColor = c_lime
paddleAlpha = 0.6;


var paddleLeftEndX = x - paddleVectorX/2; // div by 2 = half of the length of the paddle
var paddleLeftEndY = y - paddleVectorY/2;
var paddleRightEndX = x + paddleVectorX/2;
var paddleRightEndY = y + paddleVectorY/2;

// Draw the paddle and its two ends
draw_sprite_ext(paddleBatonSprite, paddleImageIndex, x, y, paddleXScale, paddleYScale, paddleAngle, paddleColor, paddleAlpha);
draw_sprite_ext(paddleLeftSprite, paddleImageIndex, paddleLeftEndX, paddleLeftEndY, paddleXScale, paddleYScale, paddleAngle, paddleColor, paddleAlpha);
draw_sprite_ext(paddleRightSprite, paddleImageIndex, paddleRightEndX, paddleRightEndY, paddleXScale, paddleYScale, paddleAngle, paddleColor, paddleAlpha);
