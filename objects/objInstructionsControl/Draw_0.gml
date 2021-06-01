/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

var main_text_color = make_colour_rgb(255, 255, 204);

var _text = scribble("[fa_center][fa_middle][#ffffcc]Instructions"
	+ "[scale,.75]\n\nIt's like that first famous paddle game"
	+ "\nbut multiplayer free-for-all!"
	+ "\n[#ff00ff][bold]Player 1 (Pink): left/right arrow keys[/color]"
	+ "\n[#00ffff]Player 2 (Aqua): [[A]/[[D] keys[/color]"
	+ "\n[#ffffcc]First to 11 wins!"
	+ "\n\n[rainbow]Press any key to play[/rainbow]"
	+ "\n");
//var _bbox = _text.get_bbox(room_width/2, room_height/2, 10, 10, 10, 5);
//draw_rectangle(_bbox.left, _bbox.top, _bbox.right, _bbox.bottom, true);
_text.draw(room_width/2, room_height/2);

///// Draw the byline at the bottom of the screen /////
draw_set_font(fntMatchupPro30);
draw_set_color(main_text_color);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(room_width/2, room_height-10, "A game by Scott Hiroshige & Micha Faw");