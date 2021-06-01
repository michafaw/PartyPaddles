// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function on_most_keys();
/// @description Returns true if you pressed a key other than Ctrl, Alt, Shift, or PrtScr
function on_most_keys() {
	return keyboard_check_pressed(vk_anykey)
		&& !keyboard_check_pressed(vk_control)
		&& !keyboard_check_pressed(vk_alt)
		&& !keyboard_check_pressed(vk_shift)
		&& !keyboard_check_pressed(vk_printscreen);
};

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

/// @function draw_text_rainbow(x, y, text, period)
/// @description Draws blinking text at coordinates. halign, valign, and text color should be set by the caller first.
/// @param x The x coordinate to write at
/// @param y The y coordinate to write at
/// @param text The string to write
/// @param period The period of repetition in milliseconds
/// @param saturation The S component of HSV (0-255)
/// @param value The V component of HSV (0-255)
function draw_text_rainbow(_x, _y, _string, _repeatPeriod, _sat, _value){
	var origColor = draw_get_color();
	var timer_mod = get_timer() % _repeatPeriod;
	var ourHue = 255 * timer_mod / _repeatPeriod;
	var ourColor = make_color_hsv(ourHue, _sat, _value);
	draw_set_color(ourColor);
	draw_text(_x, _y, _string);
	draw_set_color(origColor);
}