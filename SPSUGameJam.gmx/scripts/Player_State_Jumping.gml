var has_control;
has_control = state_last.main != Player_State_Sliding;

if (has_control) {
    Get_X_Input();
    Accelerate_X();
} else if (place_meeting(x + xspd, y, Solid)) {
    repeat(abs(xspd)) {
        if (!place_meeting(x + sign(xspd), y, Solid)) {
            x += sign(xspd);
        }
    }
    Change_State(states[sID_player_sliding]);
    exit;
} else {
    jump_wallgrab = true;
}
Move_X();

yspd += world_gravity;

if (Get_Input_Released(key_jump) && has_control) {
    jump_held = false;
}

if (!jump_held) {
    yspd += world_gravity;
}

Move_Y();

if (yspd >= 0) {
    Change_State(states[sID_player_falling]);
}

if (Get_Input_Pressed(key_jump) && has_control) {
    Change_State(states[sID_player_jumping]);
    exit;
}

if (Get_Input_Pressed(key_btn4)) {
    Change_State(states[sID_player_attacking]);
    exit;
}

if (Get_Input_Pressed(key_btn1)) {
    Change_State(power1);
    exit;
}
if (Get_Input_Pressed(key_btn2)) {
    Change_State(power2);
    exit;
}
if (Get_Input_Pressed(key_btn3)) {
    Change_State(power3);
    exit;
}
