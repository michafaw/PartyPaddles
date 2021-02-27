/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


paddleWidth = 64
paddleHeight = 24
paddleAngle = 0; // Represents the angle that the right end of the paddle points

paddleBatonSprite = sprPaddleBaton
paddleLeftSprite = sprPaddleLeftEnd
paddleRightSprite = sprPaddleRightEnd
paddleColor = c_white;
paddleAlpha = 1.0;

paddleSpeedX = 1;
paddleSpeedY = 0;

rightKey = vk_right;
leftKey = vk_left;


/// Update the paddle's internal math
// This is copies from the Step event
// Move into a script if we end up making lots of changes -- Micha TODO
paddleVectorX = lengthdir_x(paddleWidth, paddleAngle)
paddleVectorY = lengthdir_y(paddleWidth, paddleAngle)