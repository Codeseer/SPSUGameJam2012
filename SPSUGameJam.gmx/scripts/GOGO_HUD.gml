
//draw the ability bars
draw_sprite(ability_bar,0,dat_x,dat_y);
if(power1_sprite!=-1) {
    draw_sprite(power1_sprite,0,dat_x+32,dat_y+18);
}
if(power2_sprite!=-1) {
    draw_sprite(power2_sprite,0,dat_x+32+21+15,dat_y+18);
}
if(power3_sprite!=-1) {
    draw_sprite(power3_sprite,0,dat_x+32+21+15+21+15,dat_y+18);
}

//draw the mana/health bar
draw_sprite(stat_holder,0,0,0);

//draw dem healths
    draw_sprite_stretched(health_stripe,0,39,13,(Player.hp/Player.hp_max)*100,8);
    draw_sprite_stretched(mana_stripe,0,39,33,(Player.mana/100)*100,8);

//DRAW DEM HEALTH GUY
if(Player.hp != 0){    
    draw_sprite(head_health,4- Player.hp/(Player.hp_max/4),0,0);
}
