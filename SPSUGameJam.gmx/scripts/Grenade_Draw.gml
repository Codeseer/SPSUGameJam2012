if (!held) {
    var d1, d2, c1, c2;
    d1 = random(30) + 30;
    d2 = random(30) + 30;
    c1 = c_red;
    c2 = make_color_rgb(random(255), random(128), random(128));
    for (i = 0; i < 20; i += 1) {
        draw_line_color(x, y, x + lengthdir_x(d1, i * 18), y + lengthdir_y(d1, i * 18), c1, c2);
        draw_line_color(x + lengthdir_x(d1, i * 18), y + lengthdir_y(d1, i * 18), 
                  x + lengthdir_x(d2, (i + 1) * 18), y + lengthdir_y(d2, (i + 1) * 18), c2, c1);
        d1 = d2;
        d2 = random(30) + 30;
        c1 = c2;
        c2 = make_color_rgb(random(255), random(128), random(128));
    }
} else {
    draw_self();
}
