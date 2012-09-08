Animation_Update();
Get_X_Input();

if (Get_Input_Pressed(key_jump)) {
    Change_State(states[sID_player_jumping]);
    exit;
}

if (lateral_pressed && (!place_meeting(x + sign(lateral_max), y, Solid) || !place_meeting(x + sign(lateral_max), y - 1, Solid))) {
    Change_State(states[sID_player_running]);
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

if (place_meeting(x, y + 1, Semisolid) && !place_meeting(x, y + 1, Solid) && Get_Input_Pressed(key_down)) {
    y += 1;
    Change_State(states[sID_player_falling]);
}
