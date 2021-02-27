/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


width = 64
height = 24
bodyAngle = 90; // Represents the angle that the right end of the paddle points toward, -90 to 90

bodySprite = sprPaddleBaton
leftEndSprite = sprPaddleLeftEnd
rightEndSprite = sprPaddleRightEnd
color = c_white;
colorAlpha = 0.8;

movementIsSameAsBodyAngle = true;

movementSpeed = 3.5;
movementAngle = 0;
movementRange = 60; // Total distance from the start point that the paddle can move out (full range is x2)

rightKey = vk_right;
leftKey = vk_left;

shouldDrawPath = true;
pathColor = scribble_rgb_to_bgr(0x222222);


/// Internal variables
homeX = x;
homeY = y;