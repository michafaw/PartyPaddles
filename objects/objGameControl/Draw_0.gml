/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

//show_debug_message("objGameControl.Draw: " + string(instance_id) + ", " + string(instance_number(objGameControl)));

var arenaCenterX = 232+8;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(shouldShowStartPhrase) {
	draw_set_font(global.font_title_text);
	draw_set_color(c_white);
	draw_text_blinking(arenaCenterX, room_height/2, "Ready?", 500000);	
}

if(shouldShowWinnerBanner) {	
	draw_set_font(global.font_title_text);
	draw_text_rainbow(arenaCenterX, room_height/2, winnerName + " Wins!", 1000000, 255, 255);
}

if(canExitGameOver) {
	draw_set_font(global.font_normal_text);
	draw_set_color(global.main_text_color);
	draw_text_blinking(arenaCenterX, room_height/2 + 40, "Press any key", 1000000);
}

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
