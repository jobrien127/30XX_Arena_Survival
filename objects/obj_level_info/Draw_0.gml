cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
cw = camera_get_view_width(view_camera[0]);
ch = camera_get_view_height(view_camera[0]);

//Text for timer
draw_set_font(font_timer);
draw_set_color(c_white);
draw_text(cx + 30, ch - 100, "TIME:");
draw_text(cx + 30 + 120, ch - 100, string(remainingTime));

//Text for current score
draw_text(cx + 30 + 700, ch - 100, "Score:");
draw_text(cx + 30 + 850, ch - 100, string(global.currentScore));

//Text for player health
draw_text(cx + cw / 2 - 125, 20, "Health:");
with(obj_player) {
	draw_text(obj_level_info.cx + obj_level_info.cw / 2 + 30, 20, string(playerHealth));
	draw_text(obj_level_info.cx + 20, 20, "Dash:");
	if (dashBuffer <= 0) {
		draw_text(obj_level_info.cx + 140, 20, "READY");
	} else {
		dashBufferSeconds = dashBuffer / 60;
		draw_text(obj_level_info.cx + 140, 20, string(dashBufferSeconds));
	}
}