
if (place_meeting(x, y, Enemy)) {
    with (instance_place(x, y, Enemy)) {
        switch (object_index) {
            case Enemy_Charger:
                Change_State(states[sID_charger_recoiling]);
                recoil_duration = 30;
                other.life = 0;
                break;
        }
    }
}

x = Player.x;
y = Player.y - 32;
life -= 1;
if (life == 0) {
    instance_destroy();
}
