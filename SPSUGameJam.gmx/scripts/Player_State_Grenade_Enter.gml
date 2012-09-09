
with (instance_create(x, y - 32, Grenade)) {
    xspd = sign(other.lateral_max) * 16;
    yspd = -26;
}

Change_State(states[sID_player_falling]);
