switch(Player.power3) {
    case states[sID_player_laser]:
        power3_sprite = laser_skill;
    break;
    case states[sID_player_grenade]:
        power3_sprite = grenade_sprite;
    break;
    case states[sID_player_shield]:
        power3_sprite = shield_skill;
    break;
    case states[sID_player_pull]:
        power3_sprite = attract_skill;
    break;
    case states[sID_player_push]:
        power3_sprite = repel_skill;
    break;
    case states[sID_player_fists]:
        power3_sprite = fist_skill;
    break;
    case states[sID_player_lightning]:
        power3_sprite = lightning_skill;
    break;
}
