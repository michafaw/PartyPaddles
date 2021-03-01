/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

if(keyboard_check_pressed(vk_anykey)) {
	audio_play_sound(Retro_Success_Melody_02___choir_soprano, 10, false);
	room_goto(roomArenaPhysics);
}