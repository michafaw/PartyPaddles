/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/2, "Party Paddles The Game!");

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(room_width-10, room_height-10, "A game by Scott Hiroshige & Micha Faw");
