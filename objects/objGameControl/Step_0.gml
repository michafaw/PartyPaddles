/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


if(keyboard_check_pressed(vk_space)) {
	if(room != roomArenaPhysics)
		room_goto(roomArenaPhysics);
	else
		room_restart();
}

if(keyboard_check_pressed(vk_escape)) {
	if(keyboard_check(vk_shift))
		room_restart()
	else
		room_goto(roomTitle);
}

if(keyboard_check_pressed(vk_up)) {
	if(keyboard_check(vk_shift))
		game_restart()
}


// Debug code to add socre to a particular player
for (var i = 1; i <= 8; i++) {
	if(keyboard_check_pressed(ord(string(i)))) {
		global.playerScores[i-1] += 1;
	}
}