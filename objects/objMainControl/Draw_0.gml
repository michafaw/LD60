live_auto_call;



var show_debug_cell_info = false;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_aqua);

var spacing = global.cellSpacingXY;
spacingX = spacing[0]*0.5;
spacingY = spacing[1]*0.5;

for (var j = 0; j < 5; j++) {
	for (var i = 0; i <= j; i++) {
		var pos = scrXYForCellPositionXY([i,j]);
		draw_set_color(c_gray);
		
		draw_rectangle(pos[0]-spacingX, pos[1]-spacingY, pos[0]+spacingX, pos[1]+spacingY, true);
		
		// Cell position label
		var cellPosOffset = [-spacingX+15, -spacingY+10]
		draw_rectangle(pos[0]-15 + cellPosOffset[0], pos[1]-10 + cellPosOffset[1], pos[0]+15 + cellPosOffset[0], pos[1]+10 + cellPosOffset[1], false);
		draw_set_color(c_aqua);
		draw_text(pos[0] + cellPosOffset[0], pos[1]+ cellPosOffset[1], string(i) + "," + string(j));
	}
}


// Debug print of mouse position
var mouseXY = [mouse_x, mouse_y];

draw_set_color(c_white);
draw_text(100, 50, "Mouse: (" + string(mouseXY[0]) + "," + string(mouseXY[1]) + ")");

var cellXY = scrCellPositionXYForXY(mouseXY);
var cellString = "";
if (cellXY[0] < 0) {
	cellString = "Cell: Out of Bounds";	
} else {
	cellString = "Cell: (" + string(cellXY[0]) + "," + string(cellXY[1]) + ")"
}
draw_text(100, 70, cellString);