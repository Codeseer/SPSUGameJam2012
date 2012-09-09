var rand;

xspd = patrol_direction * (lateral_cap * .6);
yspd += world_gravity;
Animation_Update();
Move_Y();
Move_X_Ground();

if (xspd == 0) {
    patrol_timer += 5;
}

if (place_meeting(x + sign(xspd), y, Solid)) {
    patrol_timer = patrol_duration;
}

if (point_distance(x, y, Player.x, Player.y) < 125) {
    if (!collision_line(x, y, Player.x, Player.y - 24, Solid, true, true)) {
        Change_State(states[sID_charger_shouting]);
        exit;
    }
}

if (patrol_timer >= patrol_duration) {
    rand = random(1);
    if (rand < .002) {
        Change_State(states[sID_charger_standing]);
        exit
    } else {
        Charger_State_Patrolling_Enter();
        exit;
    }
}

patrol_timer += 1;
