with (Enemy) {
    if (pulled) {
        xspd = (other.x - x) / 3;
    }
}

if (pull_timer > pull_duration) {
    Change_State(states[sID_player_falling]);
    exit;
}

pull_timer += 1;
