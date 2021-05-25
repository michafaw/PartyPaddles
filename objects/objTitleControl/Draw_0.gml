/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

audio_stop_sound(Short_Action_Game_Loop__1);
audio_stop_sound(Short_Dramatic_Pulsing_Loop__1);

var _text = scribble("[fa_center][fa_middle][c_white][rainbow][wave]Party Paddles[/wave][/rainbow]");
//var _bbox = _text.get_bbox(room_width/2, room_height/2, 10, 10, 10, 5);
//draw_rectangle(_bbox.left, _bbox.top, _bbox.right, _bbox.bottom, true);
_text.draw(room_width/2, room_height/2-3);


// Print blinking text in lower-right corner
draw_set_font(fntMatchupPro30);
text_color = make_colour_rgb(255, 255, 204);
draw_set_color(text_color);
draw_set_alpha(get_blink_alpha(1000000));
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(room_width-10, room_height-10, "Press any key");
