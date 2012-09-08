var rand;

xspd = patrol_direction * (lateral_cap * .6);

Animation_Update();

Move_X_Ground();

if (place_meeting(x + sign(xspd), y, Solid)) {
    patrol_timer = patrol_duration;
}

if (point_distance(x, y, Player.x, Player.y) < 25) {
    if (!collision_line(x, y, Player.x, Player.y - 24, Solid, true, true)) {
        Change_State(states[sID_charger_rushing]);
        exit;
    }
}

if (patrol_timer >= patrol_duration) {
    rand = random(1);
    if (rand < .2) {
        Change_State(states[sID_charger_standing]);
        exit
    } else {
        Charger_State_Patrolling_Enter();
        exit;
    }
}

patrol_timer += 1;
