yspd = 1;
xspd = 0;

if (place_meeting(x + 1, y, Solid)) {
    slide_direction = 1;
} else {
    slide_direction = -1;
}

jump_number = 0;

aerial_lunge_available = true;
