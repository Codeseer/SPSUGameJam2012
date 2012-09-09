sound_play(choose(attack0_sfx, attack1_sfx, attack2_sfx));
var a;
a = instance_create(x, y, AttackHitbox);
if (state_last.main == Player_State_Standing || state_last.main == Player_State_Running) {
    if (lateral_pressed) {
        Change_State(states[sID_player_lunge]);
        a.sprite_index = sprite_attack_lunge;
        exit;
    }
    
    if (Get_Input(key_up)) {
        a.sprite_index = sprite_attack_sweep;
        Change_State(states[sID_player_sweep]);
        exit;
    }
    Change_State(states[sID_player_slash_a]);
    a.sprite_index = sprite_attack[0];
    exit;
} else if (state_last.main == Player_State_Jumping || state_last.main == Player_State_Falling) {
    if (lateral_pressed && aerial_lunge_available) {
        Change_State(states[sID_player_aerial_lunge]);
        a.sprite_index = sprite_attack_lunge;
        exit;
    }
    
    if (Get_Input(key_up)) {
        Change_State(states[sID_player_aerial_sweep]);
        a.sprite_index = sprite_aerial_sweep;
        exit;
    }
    
    if (Get_Input(key_down)) {
        Change_State(states[sID_player_aerial_down]);
        a.sprite_index = sprite_aerial_down;
        exit;
    }
    
    Change_State(states[sID_player_aerial_a]);
    a.sprite_index = sprite_aerial[0];
    exit;
} else if (state_last.main == Player_State_Sliding) {
    Change_State(states[sID_player_sideswipe]);
    a.sprite_index = sprite_sideswipe;
    exit;
} else {
    show_message("PROBLEM!??!?!!?!");
}


