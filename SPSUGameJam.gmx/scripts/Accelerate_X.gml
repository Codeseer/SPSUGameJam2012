if (lateral_pressed) {
    if (abs(xspd) < lateral_cap * (2.5 / 5)) {
        xspd += lateral_accel * sign(lateral_max);
    }
    xspd += lateral_accel * sign(lateral_max);
    if (abs(xspd) > lateral_cap) {
        xspd = lateral_max;
    }
}

if (abs(xspd) < world_friction) {
    xspd = 0;
} else {
    xspd -= world_friction * sign(xspd);
}
