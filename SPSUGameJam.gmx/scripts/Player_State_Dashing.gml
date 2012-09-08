Move_X();

Animation_Update();

if (dash_timer > dash_duration) {
    Change_State(states[sID_player_falling]);
    exit;
}

dash_timer += 1;
