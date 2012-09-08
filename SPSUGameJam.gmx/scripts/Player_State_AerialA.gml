animation_index += animation_speed;

if (animation_index > animation_length) {
    if (!slash_next) {
        Change_State(states[sID_player_falling]);
        exit;
    } else {
        Change_State(states[sID_player_aerial_b]);
        exit;
    }
}

if (Get_Input_Pressed(key_btn4)) {
    slash_next = true;
}

yspd += world_gravity / 3;
Move_Y();
