draw_sprite_ext(sprite_melee[0], animation_index, x, y, sign(lateral_max), 1, 0, image_blend, image_alpha);
draw_set_color(c_white);
draw_circle(x, y - 24, 140 * (1 - pull_timer / pull_duration), 1);
