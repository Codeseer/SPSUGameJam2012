if (push_timer > push_duration) {
    Change_State(states[sID_player_falling]);
    exit;
}

push_timer += 1;
