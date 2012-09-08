animation_index += animation_speed;

if (animation_index > animation_length) {
    if (!slash_next) {
        Change_State(states[sID_player_standing]);
        exit;
    } else {
        Change_State(states[sID_player_slash_c]);
        exit;
    }
}

if (Get_Input_Pressed(key_btn4)) {
    slash_next = true;
}
