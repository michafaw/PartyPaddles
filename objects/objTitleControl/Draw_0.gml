/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
//draw_text(room_width/2, room_height/2, "Party Paddles The Game!");

var _text = scribble("[fa_center][fa_middle][c_white][wave]Party Paddles[/wave]");
var _bbox = _text.get_bbox(room_width/2, room_height/2, 10, 10, 10, 5);
draw_rectangle(_bbox.left, _bbox.top, _bbox.right, _bbox.bottom, true);
_text.draw(room_width/2, room_height/2);

scribble("[fa_right][fa_bottom][c_white][scale,.75][wave]A game by Scott Hiroshige & Micha Faw[/wave]").draw(room_width-10, room_height-10);