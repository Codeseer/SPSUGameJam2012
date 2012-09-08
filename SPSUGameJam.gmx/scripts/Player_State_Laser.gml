
if (range[1]) {
    xspd = -sign(lateral_max) * 3;
    Move_X();
}
yspd += world_gravity;
    Move_Y();

if (Get_Input_Released(laser_key)) {
    Change_State(states[sID_player_falling]);
    exit;
}

laser_timer += 1;
