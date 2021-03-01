// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrInitialize() {
	
	// NOTE: You should disable GMLive when exporting. Change live_enabled from 1 to 0 in obj_gmlive->Create
	/// GMLive info here: https://yal.cc/r/17/gmlive/
	if (live_call()) return live_result;
	
	global.reduceGraphics = false;
	//if(global.reduceGraphics) // Restore this line when done debugging -- Micha TODO
		show_debug_overlay(true);
		
	
	// Scribble set up
	// https://github.com/JujuAdams/scribble/wiki/Text-Formatting
	scribble_font_add_all();
	scribble_font_set_default("fntMatchupPro40");
	
	// Initialize the player config so it can be used by objects later on
	scrSetPlayerGlobals();
	
	// Initialize gameplay config
	scrSetGameplayGlobals();
}