Get_X_Input();
Accelerate_X();
Move_X();

Animation_Update();

if (Get_Input_Pressed(key_jump)) {
    Change_State(states[sID_player_jumping]);
    exit;
}

if ((xspd == 0) && (!lateral_pressed || place_meeting(x + sign(lateral_max), y, Solid))) {
    Change_State(states[sID_player_standing]);
}

if (!place_meeting(x, y + 1, Solid) && (place_meeting(x, y, Semisolid) || !place_meeting(x, y + 1, Semisolid))) {
    Change_State(states[sID_player_falling]);
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
