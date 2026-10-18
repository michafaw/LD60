



function scrMonkeyJumpLerpXY(startXY, endXY, amount){
	live_auto_call;
	
	var jumpHeight = 100;
	
	var groundComponentX = lerp(startXY[0], endXY[0], amount);
	var groundComponentY = lerp(startXY[1], endXY[1], amount);
	
	var airComponentX = 0;
	var airComponentY = sin(amount*pi) * -jumpHeight;
	
	return [groundComponentX + airComponentX, groundComponentY + airComponentY];
}


function scrMonkeyNextDestXY(currXY){
	live_auto_call;
	
	
	if (currXY[1] > 600) {
		// Temp DEBUG bail out back to top key
		return [400, 256];
	}
	
	// Make choice to go left or right -- Micha TODO
	var goRight = random(1.0) >= global.monkeyMoveRightProb;
	var directionSign = goRight ? 1 : -1;
	return [currXY[0] + directionSign*64, currXY[1] + 64];
}