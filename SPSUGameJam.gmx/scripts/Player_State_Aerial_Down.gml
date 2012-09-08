animation_index += animation_speed;

if (animation_index > animation_length) {
    Change_State(states[sID_player_falling]);
    exit;
}

yspd += world_gravity / 3;
Move_Y();
