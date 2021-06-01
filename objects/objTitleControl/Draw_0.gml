/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

audio_stop_sound(Short_Action_Game_Loop__1);
audio_stop_sound(Short_Dramatic_Pulsing_Loop__1);



///// Print title text in center paddle graphic /////
draw_set_font(fntMatchupPro40);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
// I'll leave two options here--comment in the one you want.
// This first one is the rainbow text.
draw_text_rainbow(room_width/2, room_height/2-2, "Party Paddles", 1000000, 255, 255);
// Or, this is the single-color text
//text_color = make_colour_rgb(255, 255, 204);
//draw_text(room_width/2, room_height/2-2, "Party Paddles");



///// Print blinking text in lower-right corner /////
draw_set_font(fntMatchupPro30);
text_color = make_colour_rgb(255, 255, 204);
draw_set_color(text_color);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text_blinking(room_width-10, room_height-10, "Press any key", 1000000);
