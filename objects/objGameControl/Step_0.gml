/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;




if(keyboard_check_pressed(vk_escape)) {
	//if(keyboard_check(vk_shift))
	//	room_restart()
	//else
		room_goto(roomTitle);
}


// If the game is over and we're done showing the winner banner, go to the title screen
if(canExitGameOver) {
	if(on_most_keys()) {
		room_goto(roomTitle);
	}
}


/*
// Debug code to add score to a particular player
for (var i = 1; i <= 8; i++) {
	if(keyboard_check_pressed(ord(string(i)))) {
		global.playerScores[i-1] += 1;
	}
}
*/


// Check for a winner
if(!global.isGameOver) {
	var numPlayers = 8;

	var highScore = -1;
	var highIndex = 0;
	for(var j = 0; j < numPlayers; j++) {
		if(global.playerScores[j] > highScore) {
			highScore = global.playerScores[j];
			highIndex = j;
		}
	}
	if(highScore >= global.scoreToWin) {
		audio_play_sound(game_over, 50, false);
		winnerName = global.playerNumbers[highIndex];
		global.isGameOver = true;
		shouldShowWinnerBanner = true;
		alarm[1] = winnerBannerDisplayTime;
		
		// Wipe out all of the remaining balls in play
		with(objBallParent) {
			instance_destroy();	
		}
		with(objBallSpawner) {
			instance_destroy();	
		}
	}
}


