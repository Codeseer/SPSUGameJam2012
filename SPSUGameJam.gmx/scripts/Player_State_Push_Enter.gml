if (melee[1]) {
    push_force = -10;
} else {
    push_force = -15;
}

with (Enemy) {
    if (distance_to_object(other) < 120) {
        switch (object_index) {
            case Enemy_Charger:
                Change_State(states[sID_charger_recoiling]);
                recoil_duration = 60;
                break;
        }
        yspd = other.push_force;
        xspd = (sign(other.x - x)) * other.push_force;
        pulled = true;
    }
}

push_timer = 0;
push_duration = 6;

xspd = 0;
yspd = 0;
