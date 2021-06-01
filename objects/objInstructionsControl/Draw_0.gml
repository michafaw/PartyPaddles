/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

///// Draw the title text /////
draw_set_font(global.font_title_text);
draw_set_color(global.main_text_color);
draw_text(room_width/2, room_height/2 - 141, "Instructions");

///// Draw some other text /////
draw_set_font(global.font_normal_text);
draw_set_color(global.main_text_color);
draw_text(room_width/2, room_height/2 - 47, "It's like that first famous paddle game\nbut multiplayer free-for-all!");
draw_set_color(global.playerColors[0]);
draw_text(room_width/2, room_height/2 + 6, "Player 1 (Pink): left/right arrow keys");
draw_set_color(global.playerColors[1]);
draw_text(room_width/2, room_height/2 + 41, "Player 2 (Aqua): [A]/[D] keys");
draw_set_color(global.main_text_color);
draw_text(room_width/2, room_height/2 + 76, "First to " + string(global.scoreToWin) + " wins!");

///// Draw the "Press any key" text /////
draw_set_font(global.font_normal_text);
draw_text_rainbow(room_width/2, room_height/2 + 147, "Press any key to play", 1000000, 255,255);

///// Draw the byline at the bottom of the screen /////
draw_set_font(global.font_normal_text);
draw_set_color(global.main_text_color);
draw_text(room_width/2, room_height/2 + 212, "A game by Scott Hiroshige & Micha Faw");