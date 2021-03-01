/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

var _text = scribble("[fa_center][fa_middle][#ffffcc]Instructions"
	+ "\n[scale,.5]It's like that first famous paddle game"
	+ "\nbut multiplayer free-for-all!"
	+ "\nMove your paddle(s) left/right with the keys specified below.[/color]"
	+ "\n[#0000ff][bold]Player 1 plays the blue paddle(s) with left/right arrows keys.[/color]"
	+ "\n[#00ffff]Player 2 plays the cyan paddle(s) with [[A]/[[D].[/color]"
	+ "\n[#ffffcc]First to 11 wins!"
	+ "\n\n[scale,.75][rainbow]Press any key to play[/rainbow]");
//var _bbox = _text.get_bbox(room_width/2, room_height/2, 10, 10, 10, 5);
//draw_rectangle(_bbox.left, _bbox.top, _bbox.right, _bbox.bottom, true);
_text.draw(room_width/2, room_height/2);

scribble("[fa_right][fa_bottom][#ffffcc][scale,.75][wave]A game by Scott Hiroshige & Micha Faw[/wave]").draw(room_width-10, room_height-10);