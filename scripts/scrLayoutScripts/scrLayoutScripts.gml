


function scrXYForCellPositionXY(cellXY){
	live_auto_call;
	
	var origin = global.topKeyPositionXY;
	var spacing = [global.cellSpacingXY[0]*cellXY[0], global.cellSpacingXY[1]*cellXY[1]];
	var offset = [global.cellRowOffsetXY[0]*cellXY[1], global.cellRowOffsetXY[1]*cellXY[1]];
	
	// Set as if the rows were left aligned
	var pos = Vec2Add(origin, spacing);
	
	// Add the row offset
	pos = Vec2Add(pos, offset);	
	
	return pos;
}

function scrCellForCellPositionXY(cellXY) {
	live_auto_call;

	// Quick hack using collision masks
	var posXY = scrXYForCellPositionXY(cellXY);
	
	var instance = collision_point(posXY[0], posXY[1], objTypewriterKey, false, false);
	
	return instance;	
}


// Returns [-1, -1] if the position is out of bounds
function scrCellPositionXYForXY(screenXY) {
	live_auto_call;
	
	var originCenter = global.topKeyPositionXY;
	var spacing = global.cellSpacingXY;
	var offset = global.cellRowOffsetXY;
	
	var originTopLeft = Vec2Add(originCenter, [-spacing[0]*0.5, -spacing[1]*0.5]);
	var origin = originTopLeft;
	
	var cellY = floor( (screenXY[1] - origin[1]) / (spacing[1] + offset[1]) );
	var cellX = floor( (screenXY[0] - origin[0] - offset[0]*cellY ) / spacing[0] );
	
	
	
	// Quick hack to determine if we're out of bounds
	// Relies on magic numbers and assumptions about num cells in a row (num = row#)
	var numRows = 5;
	
	if (cellY < 0 || cellY >= numRows) {
		return [-1, -1];	
	}
	
	if (cellX < 0 || cellX > cellY) {
		return [-1, -1];	
	}
	
	
	return [cellX, cellY];
}