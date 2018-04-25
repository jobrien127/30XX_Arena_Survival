cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
cw = camera_get_view_width(view_camera[0]);
ch = camera_get_view_height(view_camera[0]);

//Displays Game Over screen
draw_set_font(font_timer);
draw_set_color(c_white);
draw_text(400, 150, "Game Over");
draw_text(305, 250, "Enemies Defeated: " + string(global.currentScore));
draw_text(340, 350, "Time Survived: " + string(global.remainingTime));
draw_text(365, 550, "Total Score: " + string(global.currentScore + global.remainingTime));
draw_text(125, 650, "Press Space to return to the Main Menu");