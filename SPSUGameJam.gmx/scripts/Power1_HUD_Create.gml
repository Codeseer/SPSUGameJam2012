switch(Player.power1) {
    case states[sID_player_laser]:
        power1_sprite = laser_skill;
    break;
    case states[sID_player_grenade]:
        power1_sprite = grenade_sprite;
    break;
    case states[sID_player_shield]:
        power1_sprite = shield_skill;
    break;
    case states[sID_player_pull]:
        power1_sprite = attract_skill;
    break;
    case states[sID_player_push]:
        power1_sprite = repel_skill;
    break;
    case states[sID_player_fists]:
        power1_sprite = fist_skill;
    break;
    case states[sID_player_lightning]:
        power1_sprite = lightning_skill;
    break;
}
