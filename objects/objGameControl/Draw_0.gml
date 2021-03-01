/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

//show_debug_message("objGameControl.Draw: " + string(instance_id) + ", " + string(instance_number(objGameControl)));

var arenaCenterX = 232+8;

if(shouldShowStartPhrase)
	scribble("[fa_center][fa_middle][c_white][wave]Ready?[/wave]").draw(arenaCenterX, room_height/2);

if(shouldShowWinnerBanner) {	
	scribble("[fa_center][fa_middle][c_white][wave][rainbow]" + winnerName + " Wins![/rainbow][wave]").draw(arenaCenterX, room_height/2);
}

if(canExitGameOver)
	scribble("[fa_center][fa_center][#ffffcc][scale,.75][wave]Press any key[/wave]").draw(arenaCenterX, room_height/2 + 40);

/*
var wallThickness = 8
var lineThickness = 2;
var floorWidth = 480-16-1;
draw_set_alpha(0.4);

var top = wallThickness;
var left = wallThickness;
var bottom = wallThickness + floorWidth;
var right = wallThickness + floorWidth; 

// Dark left/top shadow
//draw_rectangle_color(wallThickness, wallThickness, wallThickness+floorWidth, wallThickness+lineThickness, c_black, c_black, c_black, c_black, false)
//draw_rectangle_color(wallThickness, wallThickness+lineThickness, wallThickness+lineThickness, wallThickness+floorWidth, c_black, c_black, c_black, c_black, false)

// Light bottom/right brightening
//draw_rectangle_color(left, bottom-lineThickness, right, bottom, c_white, c_white, c_white, c_white, false)
//draw_rectangle_color(wallThickness, wallThickness+lineThickness, wallThickness+lineThickness, wallThickness+floorWidth, c_black, c_black, c_black, c_black, false)
//draw_rectangle_color(wallThickness, wallThickness-lineThickness, wallThickness+lineThickness, wallThickness+floorWidth, c_white, c_white, c_white, c_white, false)
draw_set_alpha(1.0);
*/
