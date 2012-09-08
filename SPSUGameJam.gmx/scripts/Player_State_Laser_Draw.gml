var y_last, y_next;
y_last = 0;
y_next = 0;
y_last2 = 0;
y_next2 = 0;
draw_sprite_ext(sprite_range[1], animation_index, x, y, sign(lateral_max), 1, 0, image_blend, image_alpha);

draw_set_color(c_white)
//if (!range[1])
    draw_line_width(x, y - 16, x + 50 * laser_timer * sign(lateral_max), y - 16, laser_size);

for (i = 0; i < min(laser_timer, 15); i += 1) {
    draw_line(x + i * 50 * sign(lateral_max), y + lengthdir_y(laser_size * 2, laser_timer * i * 10) - 16,
              x + (i + 1) * 50 * sign(lateral_max), y + lengthdir_y(laser_size * 2, laser_timer * (i + 1) * 10) - 16);
}
//draw_set_color(c_black);
if (range[1]) {
for (i = 0; i < min(laser_timer, 30); i += 1) {
    draw_line(x + i * 25 * sign(lateral_max), y + min(i * 1.5, 15) * cos(degtorad(i * 50 - laser_timer * 10)) - 16 + min(i * 2, 10),
              x + (i + 1) * 25 * sign(lateral_max), y + min((i + 1) * 1.5, 15) * cos(degtorad((i + 1) * 50 - laser_timer * 10)) - 16 + min((i + 1) * 2, 10));
    y_last = y_next;
    y_next = random_range(-1, 1);
    y_last2 = y_next2;
    y_next2 = random_range(-1, 1);
    draw_line(x + i * 25 * sign(lateral_max), y + min(i * 1.5, 15) * cos(degtorad(i * 50 - laser_timer * 10)) - 16 + min(i * 2, 10) * y_last,
              x + (i + 1) * 25 * sign(lateral_max), y + min((i + 1) * 1.5, 15) * cos(degtorad((i + 1) * 50 - laser_timer * 10)) - 16 + min((i + 1) * 2, 10) * y_next);
    draw_line(x + i * 25 * sign(lateral_max), y + min(i * 1.5, 15) * cos(degtorad(i * 50 - laser_timer * 10)) - 16 + min(i * 2, 10) * y_last2,
              x + (i + 1) * 25 * sign(lateral_max), y + min((i + 1) * 1.5, 15) * cos(degtorad((i + 1) * 50 - laser_timer * 10)) - 16 + min((i + 1) * 2, 10) * y_next2);
              
    draw_line(x + i * 25 * sign(lateral_max), y + min(i * 1.5, 15) * cos(degtorad(i * 50 - laser_timer * 10)) - 16 - min(i * 2, 10),
              x + (i + 1) * 25 * sign(lateral_max), y + min((i + 1) * 1.5, 15) * cos(degtorad((i + 1) * 50 - laser_timer * 10)) - 16 - min((i + 1) * 2, 10));
}
}
