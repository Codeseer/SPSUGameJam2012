
Animation_Update();

if (shouting_timer > shouting_duration) {
    if (collision_line(x, y, Player.x, Player.y, Solid, true, true)) {
        Change_State(states[sID_charger_patrolling]);
        exit;
    } else {
        Change_State(states[sID_charger_rushing]);
    }
}

shouting_timer += 1;
