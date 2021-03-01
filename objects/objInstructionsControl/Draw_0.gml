/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

var _text = scribble("[fa_center][fa_middle][#ffffcc]Instructions"
	+ "[scale,.75]\n\nIt's like that first famous paddle game"
	+ "\nbut multiplayer free-for-all!"
	+ "\n[#0000ff][bold]Player 1 (Blue): left/right arrow keys[/color]"
	+ "\n[#00ffff]Player 2 (Cyan): [[A]/[[D] keys[/color]"
	+ "\n[#ffffcc]First to 11 wins!"
	+ "\n\n[rainbow]Press any key to play[/rainbow]"
	+ "\n");
//var _bbox = _text.get_bbox(room_width/2, room_height/2, 10, 10, 10, 5);
//draw_rectangle(_bbox.left, _bbox.top, _bbox.right, _bbox.bottom, true);
_text.draw(room_width/2, room_height/2);

scribble("[fa_right][fa_bottom][#ffffcc][scale,.75][wave]A game by Scott Hiroshige & Micha Faw[/wave]").draw(room_width-10, room_height-10);