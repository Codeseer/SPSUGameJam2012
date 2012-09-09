xspd = patrol_direction * (lateral_cap * .6);
yspd += world_gravity;
Animation_Update();
Move_Y();
Move_X_Ground();

if (place_meeting(x + sign(xspd), y, Solid)) {
    patrol_timer = patrol_duration;
}

if (point_distance(x, y, Player.x, Player.y) < 125) {
    if (!collision_line(x, y, Player.x, Player.y - 24, Solid, true, true)) {
        Change_State(states[sID_melee_rushing]);
        exit;
    }
}

if (patrol_timer >= patrol_duration) {
    Melee_State_Patrolling_Enter();
    exit;
}

patrol_timer += 1;
