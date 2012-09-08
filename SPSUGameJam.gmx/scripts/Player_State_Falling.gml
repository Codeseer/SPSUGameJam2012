Get_X_Input();
Accelerate_X();
if (jump_wallgrab) {
    if (place_meeting(x + xspd, y, Solid) && jump_held) {
        repeat(abs(xspd)) {
            if (!place_meeting(x + sign(xspd), y, Solid)) {
                x += sign(xspd);
            }
        }
        Change_State(states[sID_player_sliding]);
        exit;
    }
}

Move_X();

yspd += world_gravity;

if (Get_Input_Released(key_jump)) {
    jump_held = false;
}

Move_Y();

if (place_meeting(x, y + 1, Solid) || (place_meeting(x, y + 1, Semisolid) && !place_meeting(x, y, Semisolid))) {
    if (xspd != 0) {
        Change_State(states[sID_player_running]);
    } else {
        Change_State(states[sID_player_standing]);
    }
    jump_number = 0;
    exit;
}

if (Get_Input_Pressed(key_jump)) {
    Change_State(states[sID_player_jumping]);
    exit;
}

if (Get_Input_Pressed(key_btn4)) {
    Change_State(states[sID_player_attacking]);
    exit;
}

if (lateral_pressed && place_meeting(x + sign(lateral_max), y, Solid)) {
    Change_State(states[sID_player_sliding]);
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
