draw_sprite_ext(sprite_run, animation_index, x, y, sign(lateral_max), 1, 0, image_blend, image_alpha);
draw_set_color(c_white);

draw_line(x + 6, y - 30, dash_x + 22 * sign(lateral_max), dash_y - 30);
draw_line(x + 22 * -sign(lateral_max), y + 6, dash_x, dash_y + 6);
