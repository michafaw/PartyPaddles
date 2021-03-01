/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

MOTION_RADIUS = 16;

//18 seems fast
ANGULAR_VELOCITY_DEG_PER_FRAME = 12;

initialX = x;
initialY = y;
thetaRads = 0;
angularVelocityRadsPerFrame = degtorad(ANGULAR_VELOCITY_DEG_PER_FRAME);
