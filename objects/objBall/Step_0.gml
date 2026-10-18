live_auto_call;


var reachedDestination = false;

travelTimeSoFar += global.currentDelta * moveMultiplier;

if (travelTimeSoFar > travelTimeMax) {
	travelTimeSoFar = travelTimeMax;
	travelTimeSoFar = 0;
	reachedDestination = true;
}

if (reachedDestination) {
	
	prevXY = destXY;
	destXY = scrMonkeyNextDestXY(destXY);
	
}

lerpPercent = travelTimeSoFar/travelTimeMax;
positionXY = scrMonkeyJumpLerpXY(prevXY, destXY, lerpPercent);




// Handle reaching the destination and choosing a new location -- Micha TODO


x = positionXY[0];
y = positionXY[1];