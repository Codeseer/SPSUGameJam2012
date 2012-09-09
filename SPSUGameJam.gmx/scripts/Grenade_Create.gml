if (Player.power1 == states[sID_player_grenade]) {
    key = Player.key_btn1;
} else if (Player.power2 == states[sID_player_grenade]) {
    key = Player.key_btn2;
} else if (Player.power3 == states[sID_player_grenade]) {
    key = Player.key_btn3;
}
with (Player) {
    other.held = Get_Input(other.key);
}

life = 20;

sound_play(grenade_throw_sfx);
