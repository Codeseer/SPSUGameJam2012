draw_sprite_ext(sprite_melee[1], animation_index, x, y, sign(lateral_max), 1, 0, image_blend, image_alpha);
draw_set_color(c_white);
draw_circle(x, y - 24, 140 * (push_timer / push_duration), 1);
