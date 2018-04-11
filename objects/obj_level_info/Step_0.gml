// Implements the level timer.
if (timerBuffer == 0) {
	timerBuffer = 60;	
	remainingTime--;
}
else {
	timerBuffer--;
}

if (remainingTime < 0) {
	room_goto(0);	
}