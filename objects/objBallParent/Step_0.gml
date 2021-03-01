/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


// Out of bounds protection, just in case of crazy physics issues
if(bbox_right < 0 ||
	 bbox_left > room_width ||
	 bbox_bottom < 0 ||
	 bbox_top > room_height) {
	show_debug_message("Ball " + string(self.id) + " has escaped the room, destroying it."); 
	instance_destroy();
	exit;
}