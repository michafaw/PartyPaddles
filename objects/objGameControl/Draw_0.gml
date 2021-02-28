/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

if(shouldShowStartPhrase)
	scribble("[fa_center][fa_middle][c_white][wave]Ready?[/wave]").draw(room_width/2, room_height/2);

scribble("[fa_center][fa_middle][c_white]" + string(instance_number(objGameControl))).draw(room_width/2, room_height/2);


var wallThickness = 8
var lineThickness = 2;
var floorWidth = 480-16-1;
draw_set_alpha(0.4);

var top = wallThickness;
var left = wallThickness;
var bottom = wallThickness + floorWidth;
var right = wallThickness + floorWidth;

//draw_rectangle_color(wallThickness, wallThickness, wallThickness+floorWidth, wallThickness+lineThickness, c_black, c_black, c_black, c_black, false)
//draw_rectangle_color(wallThickness, wallThickness+lineThickness, wallThickness+lineThickness, wallThickness+floorWidth, c_black, c_black, c_black, c_black, false)



draw_rectangle_color(left, bottom-lineThickness, right, bottom, c_white, c_white, c_white, c_white, false)


draw_rectangle_color(wallThickness, wallThickness-lineThickness, wallThickness+lineThickness, wallThickness+floorWidth, c_white, c_white, c_white, c_white, false)
draw_rectangle(wallThickness, wallThickness, wallThickness+floorWidth, wallThickness+lineThickness, false);
draw_line_color(wallThickness, wallThickness, wallThickness+100, wallThickness+100, c_black, c_black);
draw_set_alpha(1.0);

var goalDepth = 7 // 8 pixels 0->7
var goalLength = 48;
var leftOnMarble = wallThickness - 1


draw_rectangle_color(leftOnMarble-goalDepth, top+100, leftOnMarble, top+100+32, c_white, c_white, c_white, c_white, false)
