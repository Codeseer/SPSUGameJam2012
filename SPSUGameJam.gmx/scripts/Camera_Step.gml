
if (abs(Player.xspd) > Player.lateral_cap / 2) {
    time[0] += 1;
} else {
    time[0] = 0;
}

goal_x = Player.x + 256 * sign(Player.lateral_max) * min(1, (abs(Player.xspd) / Player.lateral_cap) * min((time[0] / 45), 1));
goal_y = Player.y - 30 + 80 * max(0, Player.yspd / Player.vertical_cap);

var d;
d = point_distance(x, y, goal_x, goal_y);

if (abs(x - goal_x) > 350) {
    dx -= (dx - goal_x) / (xfac / 3);
} else {
    dx -= (dx - goal_x) / xfac;
}
if (abs(y - goal_y) > 100) {
    dy -= (dy - goal_y) / (yfac / 3);
} else {
    dy -= (dy - goal_y) / yfac;
}

y -= (y - dy) / (yfac);
x -= (x - dx) / (xfac / 2);

background_x[0] = view_xview[0] * .9;
background_y[0] = view_yview[0] * .7;
