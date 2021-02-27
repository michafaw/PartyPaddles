/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


width = 64
height = 24
bodyAngle = 45; // Represents the angle that the right end of the paddle points toward, -90 to 90

bodySprite = sprPaddleBaton
leftEndSprite = sprPaddleLeftEnd
rightEndSprite = sprPaddleRightEnd
color = c_white;
colorAlpha = 1.0;

movementIsSameAsBodyAngle = true;

movementSpeed = 3.5;
movementAngle = 0;

rightKey = vk_right;
leftKey = vk_left;