
if (standing_timer > standing_duration) {
    Change_State(states[sID_charger_patrolling]);
    exit;
}

standing_timer += 100;
