

if (rush_timer > rush_duration) {
    Change_State(states[sID_charger_recoiling]);
    recoil_duration = 60;
    exit;
}

rush_timer += 1;

Move_X_Ground();
