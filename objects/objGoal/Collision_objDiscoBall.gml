/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

show_debug_message("Collision with ball!");

global.playerScores[playerNumber-1] += 1;
instance_destroy(other.id);