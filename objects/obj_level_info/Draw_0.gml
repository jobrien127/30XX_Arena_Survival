cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
cw = camera_get_view_width(view_camera[0]);

draw_set_font(font_timer);
draw_set_color(c_white);
draw_text(cx + cw / 2 - 135, 30, "REMAINING TIME:");
draw_text(cx + cw / 2, 80, string(remainingTime));