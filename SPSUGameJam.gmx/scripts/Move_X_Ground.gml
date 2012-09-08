var xs;

xs = sign(xspd);

repeat (abs(xspd)) {
    if (!place_meeting(x + xs, y + 1, Solid) &&!place_meeting(x + xs, y, Solid)) {
        if (place_meeting(x + xs, y + 2, Solid)) {
            x += xs;
            y += 1;
        } else {
            xspd = 0;
        }
    } else if (!place_meeting(x + xs, y, Solid)) {
        x += xs;
    } else if (!place_meeting(x + xs, y - 1, Solid)) {
        x += xs;
        y -= 1;
    } else {
        xspd = 0;
    }
}
