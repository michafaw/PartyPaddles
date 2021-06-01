/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

var main_text_color = make_colour_rgb(255, 255, 204);
var player_1_text_color = make_colour_rgb(255, 0, 255);
var player_2_text_color = make_colour_rgb(0, 255, 255);
var main_text_font = fntMatchupPro30;
var title_text_font = fntMatchupPro40;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

///// Draw the title text /////
draw_set_font(title_text_font);
draw_set_color(main_text_color);
draw_text(room_width/2, room_height/2 - 141, "Instructions");

///// Draw some other text /////
draw_set_font(main_text_font);
draw_set_color(main_text_color);
draw_text(room_width/2, room_height/2 - 47, "It's like that first famous paddle game\nbut multiplayer free-for-all!");
draw_set_color(player_1_text_color);
draw_text(room_width/2, room_height/2 + 6, "Player 1 (Pink): left/right arrow keys");
draw_set_color(player_2_text_color);
draw_text(room_width/2, room_height/2 + 41, "Player 2 (Aqua): [A]/[D] keys");
draw_set_color(main_text_color);
draw_text(room_width/2, room_height/2 + 76, "First to 11 wins!");

///// Draw the "Press any key" text /////
draw_set_font(main_text_font);
draw_text_rainbow(room_width/2, room_height/2 + 147, "Press any key to play", 1000000, 255,255);

///// Draw the byline at the bottom of the screen /////
draw_set_font(main_text_font);
draw_set_color(main_text_color);
draw_text(room_width/2, room_height/2 + 212, "A game by Scott Hiroshige & Micha Faw");