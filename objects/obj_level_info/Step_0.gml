// Implements the level timer.
if (timerBuffer == 0) {
	timerBuffer = 60;	
	global.remainingTime++;
}
else {
	timerBuffer--;
}
/*
if (global.remainingTime < 0) {
	room_goto(results_room);	
}
*/