draw_sprite_ext(sprite_melee[2], animation_index, x, y, sign(lateral_max), 1, 0, image_blend, image_alpha);

draw_set_color(c_white);
for (i = 0; i <3 ; i += 1) {
    draw_line(x, y - 16, x + 48 * sign(lateral_max), y + random(48) - 28 - 16);
    if (melee[2]) {
        draw_line(x, y - 16, x + 48 * -sign(lateral_max), y + random(48) - 28 - 16);
    }
}
