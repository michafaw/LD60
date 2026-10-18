live_auto_call;


if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace)) {
	room_goto(roomTitle);
}


if (keyboard_check_pressed(vk_right)) {
	global.currentDelta *= 2.0;
} else if (keyboard_check_pressed(vk_left)) {
	global.currentDelta /= 2.0;
}