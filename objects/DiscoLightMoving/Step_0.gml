/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

thetaRads -= angularVelocityRadsPerFrame;
x = initialX + MOTION_RADIUS * cos(thetaRads);
y = initialY + MOTION_RADIUS * sin(thetaRads);