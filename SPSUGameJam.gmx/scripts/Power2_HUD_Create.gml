switch(Player.power2) {
    case states[sID_player_laser]:
        power2_sprite = laser_skill;
    break;
    case states[sID_player_grenade]:
        power2_sprite = grenade_sprite;
    break;
    case states[sID_player_shield]:
        power2_sprite = shield_skill;
    break;
    case states[sID_player_pull]:
        power2_sprite = attract_skill;
    break;
    case states[sID_player_push]:
        power2_sprite = repel_skill;
    break;
    case states[sID_player_fists]:
        power2_sprite = fist_skill;
    break;
    case states[sID_player_lightning]:
        power2_sprite = lightning_skill;
    break;
}
