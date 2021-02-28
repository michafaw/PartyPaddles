/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

if(global.reduceGraphics) {
	draw_self()
	exit;
}

var anchorX = 488
var anchorY = 8;

var numPlayers = 8;
var scorecardWidth = 144;
var scorecardHeight = 58;


var shouldSortByScore = false;


var sortedPlayerScores;
var sortedPlayerCharacters;
var sortedPlayerNumbers;

if(shouldSortByScore) {

	// Copy in the existing player info
	var allPlayerScores = array_create(numPlayers, 0);
	array_copy(allPlayerScores, 0, global.playerScores, 0, 8);
	var allPlayerCharacters = array_create(numPlayers, sprCharacter1);
	array_copy(allPlayerCharacters, 0, global.playerCharacters, 0, numPlayers);
	var allPlayerNumbers = array_create(numPlayers, 0);
	array_copy(allPlayerNumbers, 0, global.allPlayerNumbers, 0, numPlayers);

	// Sort the players by score
	var sortedPlayerScores = array_create(0, 0);
	var sortedPlayerCharacters = array_create(0, 0);
	var sortedPlayerNumbers = array_create(0, 0);


	repeat (numPlayers) {
		var highScore = -1;
		var highIndex = 0;
		for(var j = 0; j < array_length(allPlayerScores); j++) {
			if(allPlayerScores[j] > highScore) {
				highScore = allPlayerScores[j];
				highIndex = j;
			}
		}
	
		// Add to the end of the sorted array
		array_push(sortedPlayerScores, allPlayerScores[highIndex]);
		array_push(sortedPlayerCharacters, allPlayerCharacters[highIndex]);
		array_push(sortedPlayerNumbers, allPlayerNumbers[highIndex]);
	
		// Remove from the unsorted array
		array_delete(allPlayerScores, highIndex, 1);
		array_delete(allPlayerCharacters, highIndex, 1);
		array_delete(allPlayerNumbers, highIndex, 1);
	}
} else {
	// Do not sort
	sortedPlayerScores = global.playerScores;
	sortedPlayerCharacters = global.playerCharacters
	sortedPlayerNumbers = global.allPlayerNumbers
}

for(var i = 0; i < numPlayers; i++) {
	var cardOriginY = anchorY + i*scorecardHeight;
	//draw_sprite(sprScorecard, 0, anchorX, cardOriginY);
	draw_sprite_ext(sortedPlayerCharacters[i], 0, anchorX + 68, cardOriginY+ 56, 2, 2, 0, c_white, 1.0);
	scribble("[fa_left][fa_top][c_white]P" + string(sortedPlayerNumbers[i])).draw(anchorX, cardOriginY);
	scribble("[fa_right][fa_top][c_white]" + string(sortedPlayerScores[i])).draw(anchorX+scorecardWidth - 6, cardOriginY);
}