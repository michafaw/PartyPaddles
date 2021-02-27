// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrInitialize() {
	
	// NOTE: You should disable GMLive when exporting. Change live_enabled from 1 to 0 in obj_gmlive->Create
	/// GMLive info here: https://yal.cc/r/17/gmlive/
	if (live_call()) return live_result;
	
	// Scribble set up
	// https://github.com/JujuAdams/scribble/wiki/Text-Formatting
	scribble_font_add_all();
	scribble_font_set_default("fntAvenirBlack30");
	
}