Animation_Update();

if (sign(Player.x - x) == sign(lateral_max) && abs(Player.x - x) < 50) {
    if (random(1) > .1) {
        Change_State(states[sID_melee_attacking]);
        exit;
    } else {
        Change_State(states[sID_melee_failing]);
        exit;
    }
}

Move_X_Ground();

if (xspd == 0 || point_distance(x, y, Player.x, Player.y) > 250 || collision_line(x, y, Player.x, Player.y, Solid, true, true)) {
    Change_State(states[sID_melee_patrolling]);
    exit;
}
