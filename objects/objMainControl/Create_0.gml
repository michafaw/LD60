live_auto_call;

randomise();
global.randomSeed = random_get_seed();
show_debug_message("Random seed: " + string(global.randomSeed));


global.baseDelta = 1.0;
global.currentDelta = global.baseDelta;


global.monkeyMoveRightProb = 0.5;




global.topOfTypewriter = 118; // y coordinate
global.topKeyPositionXY = [400, 256];
global.cellSpacingXY = [128, 64];
global.cellRowOffsetXY = [-64, 0];



selectedCell = noone;