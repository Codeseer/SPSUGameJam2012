if (lightning_timer > lightning_duration / 8) {
    Camera.x += random(10) - 5;
    Camera.y += random(10) - 5;
}
if (lightning_timer > lightning_duration) {
    Change_State(states[sID_player_falling]);
    exit;
}

lightning_timer += 1;
