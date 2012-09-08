if (melee[0]) {
    pull_number = 10;
} else {
    pull_number = 1;
}

with (Enemy) {
    if (distance_to_object(other) < 120) {
        switch (object_index) {
            case Enemy_Charger:
                Change_State(states[sID_charger_recoiling]);
                recoil_duration = 60;
                break;
        }
        yspd = -15 + (other.y - y) / 3;
        xspd = (other.x - x) / 3;
        pulled = true;
    }
}

pull_timer = 0;
pull_duration = 15;

xspd = 0;
yspd = 0;
