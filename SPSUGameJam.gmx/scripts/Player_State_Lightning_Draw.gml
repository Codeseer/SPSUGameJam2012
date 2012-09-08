var _a, _y, _segs, _seg_len;
_a = min((lightning_timer / lightning_duration) * 8, 1);
_y = view_yview[0] + (y - view_yview[0] + 16) * _a;

_segs = floor((y - view_yview[0]) / 10);
_seg_len = (y - view_yview[0]) / _segs;


draw_sprite_ext(sprite_range[0], animation_index, x, y, sign(lateral_max), 1, 0, image_blend, image_alpha);
draw_set_color(c_white);

draw_line_width(x, view_yview[0], x, _y, lightning_size);

//draw_set_color(c_black);
for (i = 0; i < _segs; i += 1) {
    x_last[0] = x_next[0];
    x_next[0] = x + random(lightning_size * 4) - lightning_size * 2;
    c_last[0] = c_next[0];
    c_next[0] = make_color_rgb(random(255), random(255), random(255));
    draw_line_color(x_last[0], view_yview[0] + i * _seg_len, 
              x_next[0], view_yview[0] + (i + 1) * _seg_len, c_last[0], c_next[0]);
    if (range[0]) {
        c_last[1] = c_next[1];
        c_next[1] = make_color_rgb(random(255), random(255), random(255));
        x_last[1] = x_next[1];
        x_next[1] = x + random(lightning_size * 4) - lightning_size * 2;
        draw_line_color(x_last[1], view_yview[0] + i * _seg_len, 
                  x_next[1], view_yview[0] + (i + 1) * _seg_len, c_last[1], c_next[1]);
    }
}
draw_set_color(c_white);
draw_circle(x, y + 16, 80 * max(lightning_timer - lightning_duration / 8, 0) / lightning_duration, 1);

if (lightning_timer > lightning_duration / 8 && range[0]) {
    for (i = 0; i < 8; i += 1) {
        draw_line(x, y + 16, x + lengthdir_x(80 * max(lightning_timer - lightning_duration / 8, 0) / lightning_duration, random(45) + 45 * i), 
                             y + lengthdir_y(80 * max(lightning_timer - lightning_duration / 8, 0) / lightning_duration, random(45) + 45 * i));
    }
    draw_circle(x, y + 16, 40 * max(lightning_timer - lightning_duration / 8, 0) / lightning_duration, 1);
}
