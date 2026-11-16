live_auto_call;


if (keyboard_check_pressed(vk_escape) || mouse_check_button_pressed(mb_right)) {
	room_goto(roomTitle);
} else if (keyboard_check_pressed(vk_backspace)) {
	room_restart();
}




if (keyboard_check_pressed(vk_right)) {
	global.currentDelta *= 2.0;
} else if (keyboard_check_pressed(vk_left)) {
	global.currentDelta /= 2.0;
}


// Get the mouse XY, get the cell, set it selected if not OOB
//scrCellForCellPositionXY