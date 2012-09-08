if (state_last.main == Player_State_Standing || state_last.main == Player_State_Running) {
    if (lateral_pressed) {
        Change_State(states[sID_player_lunge]);
        exit;
    }
    
    if (Get_Input(key_up)) {
        Change_State(states[sID_player_sweep]);
        exit;
    }
    
    Change_State(states[sID_player_slash_a]);
    exit;
} else if (state_last.main == Player_State_Jumping || state_last.main == Player_State_Falling) {
    if (lateral_pressed && aerial_lunge_available) {
        Change_State(states[sID_player_aerial_lunge]);
        exit;
    }
    
    if (Get_Input(key_up)) {
        Change_State(states[sID_player_aerial_sweep]);
        exit;
    }
    
    if (Get_Input(key_down)) {
        Change_State(states[sID_player_aerial_down]);
        exit;
    }
    
    Change_State(states[sID_player_aerial_a]);
    exit;
} else if (state_last.main == Player_State_Sliding) {
    Change_State(states[sID_player_sideswipe]);
    exit;
} else {
    show_message("PROBLEM!??!?!!?!");
}
