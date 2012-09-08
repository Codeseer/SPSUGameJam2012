animation_index += animation_speed;

if (animation_index > animation_length) {
    jump_number += 1;
    Change_State(states[sID_player_falling]);
    exit;
}

if (abs(xspd) < lateral_cap) {
    xspd += lateral_accel * sign(lateral_max);
    if (abs(xspd) > lateral_cap) {
        xspd = sign(xspd) * lateral_cap;
    }
}

Move_X();
