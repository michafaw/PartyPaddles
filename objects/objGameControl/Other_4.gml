/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

if(roomArenaParentSettings) {
	show_debug_message("Just started roomArenaParentSettings");
	show_debug_message("objGameControl.RoomStart: instance_number = " + string(instance_number(objGameControl)));
}