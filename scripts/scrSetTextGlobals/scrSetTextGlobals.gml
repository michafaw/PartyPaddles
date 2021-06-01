// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrSetTextGlobals(){
	if (live_call()) return live_result;
	
	global.font_title_text = fntMatchupPro40;
	global.font_normal_text = fntMatchupPro30;
	global.main_text_color = make_colour_rgb(255, 255, 204);
}