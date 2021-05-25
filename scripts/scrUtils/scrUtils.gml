// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


/// @function get_blink_alpha(period)
/// @description Returns what the alpha should be for a periodic blink
/// @param period The period of repetition in ms
function get_blink_alpha(_repeatPeriod){
	var halfPeriod = _repeatPeriod / 2;
	var timer_mod = get_timer() % _repeatPeriod;
	if (timer_mod < halfPeriod) {
		return timer_mod / halfPeriod;
	} else {
		return (_repeatPeriod - timer_mod) / halfPeriod;
	}
}