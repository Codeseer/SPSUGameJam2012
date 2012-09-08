

if (fists_timer > fists_duration) {
    Change_State(states[sID_player_falling]);
    exit;
}

fists_timer += 1;
