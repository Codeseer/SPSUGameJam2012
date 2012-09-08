animation_index += animation_speed;

if (animation_index > animation_length) {
    if (!slash_next) {
        Change_State(states[sID_player_sliding]);
        exit;
    }
}
