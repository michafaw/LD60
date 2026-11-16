live_auto_call;


var shouldSpawnMonkey = false;


currSpawnCooldown -= global.currentDelta;


if (currSpawnCooldown < 0) {
	currSpawnCooldown = baseSpawnCooldown;
	shouldSpawnMonkey = true;
}

if (shouldSpawnMonkey) {
	var monkeyInitialLayerName = "BehindTypewriter";
	
	var monkeyOffset = irandom_range(-128, 128);
	
	var newMonkey = instance_create_layer(x + monkeyOffset, y, monkeyInitialLayerName, objBall);
	newMonkey.prevXY = [newMonkey.x, newMonkey.y];
	newMonkey.destXY = global.topKeyPositionXY;
}