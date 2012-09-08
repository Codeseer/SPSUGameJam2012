animation_index += animation_speed;

if (animation_index > animation_length) {
    Change_State(states[sID_player_standing]);
    exit;
}
