
if (recoil_timer > recoil_duration) {
    Change_State(states[sID_charger_patrolling]);
    exit;
}

Move_X();
yspd += world_gravity;
Move_Y();

recoil_timer += 1;

if (place_meeting(x, y + 1, Solid)) {
    xspd *= .8;
}
