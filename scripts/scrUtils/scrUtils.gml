// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


/// @function draw_text_blinking(x, y, text, period)
/// @description Draws blinking text at coordinates. halign, valign, and text color should be set by the caller first.
/// @param x The x coordinate to write at
/// @param y The y coordinate to write at
/// @param text The string to write
/// @param period The period of repetition in milliseconds
function draw_text_blinking(_x, _y, _string, _repeatPeriod){
	var origAlpha = draw_get_alpha();
	var halfPeriod = _repeatPeriod / 2;
	var timer_mod = get_timer() % _repeatPeriod;
	var ourAlpha = 0;
	if (timer_mod < halfPeriod) {
		ourAlpha = timer_mod / halfPeriod;
	} else {
		ourAlpha = (_repeatPeriod - timer_mod) / halfPeriod;
	}
	draw_set_alpha(ourAlpha);
	draw_text(_x, _y, _string);
	draw_set_alpha(origAlpha);
}
