yspd += world_gravity / 10;

if (yspd > world_gravity * 2) {
    yspd = world_gravity * 2;
}

Move_Y();

if (place_meeting(x, y + 1, Solid)) {
    Change_State(states[sID_player_standing]);
    exit;
}

if (Get_Input_Pressed(key_jump)) {
    lateral_max = -slide_direction * lateral_cap;
    xspd = lateral_max;
    Change_State(states[sID_player_jumping]);
    exit;
}

if (Get_Input_Pressed(key_down)) {
    xspd = slide_direction * -3;
    Change_State(states[sID_player_falling]);
    exit;
}

if (!place_meeting(x + slide_direction, y, Solid)) {
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
