

states[sID_player_standing] = instance_create(0, 0, State_object);
states[sID_player_running] = instance_create(0, 0, State_object);
states[sID_player_jumping] = instance_create(0, 0, State_object);
states[sID_player_falling] = instance_create(0, 0, State_object);
states[sID_player_attacking] = instance_create(0, 0, State_object);
states[sID_player_dashing] = instance_create(0, 0, State_object);
states[sID_player_sliding] = instance_create(0, 0, State_object);
states[sID_player_recoiling] = instance_create(0, 0, State_object);
states[sID_player_slash_a] = instance_create(0, 0, State_object);
states[sID_player_slash_b] = instance_create(0, 0, State_object);
states[sID_player_slash_c] = instance_create(0, 0, State_object);
states[sID_player_lunge] = instance_create(0, 0, State_object);
states[sID_player_sweep] = instance_create(0, 0, State_object);
states[sID_player_sideswipe] = instance_create(0, 0, State_object);
states[sID_player_aerial_a] = instance_create(0, 0, State_object);
states[sID_player_aerial_b] = instance_create(0, 0, State_object);
states[sID_player_aerial_c] = instance_create(0, 0, State_object);
states[sID_player_aerial_down] = instance_create(0, 0, State_object);
states[sID_player_aerial_sweep] = instance_create(0, 0, State_object);
states[sID_player_aerial_lunge] = instance_create(0, 0, State_object);
states[sID_player_pull] = instance_create(0, 0, State_object);
states[sID_player_push] = instance_create(0, 0, State_object);
states[sID_player_fists] = instance_create(0, 0, State_object);
states[sID_player_lightning] = instance_create(0, 0, State_object);
states[sID_player_laser] = instance_create(0, 0, State_object);
states[sID_player_grenade] = instance_create(0, 0, State_object);
states[sID_player_shield] = instance_create(0, 0, State_object);


states[sID_player_standing].main = Player_State_Standing;
states[sID_player_standing].draw = Player_State_Standing_Draw;
states[sID_player_standing].on_enter = Player_State_Standing_Enter;
states[sID_player_standing].on_exit = Player_State_Standing_Exit;
states[sID_player_standing].init = Player_State_Standing_Init;

states[sID_player_running].main = Player_State_Running;
states[sID_player_running].draw = Player_State_Running_Draw;
states[sID_player_running].on_enter = Player_State_Running_Enter;
states[sID_player_running].on_exit = Player_State_Running_Exit;
states[sID_player_running].init = Player_State_Running_Init;

states[sID_player_jumping].main = Player_State_Jumping;
states[sID_player_jumping].draw = Player_State_Jumping_Draw;
states[sID_player_jumping].on_enter = Player_State_Jumping_Enter;
states[sID_player_jumping].on_exit = Player_State_Jumping_Exit;
states[sID_player_jumping].init = Player_State_Jumping_Init;

states[sID_player_falling].main = Player_State_Falling;
states[sID_player_falling].draw = Player_State_Falling_Draw;
states[sID_player_falling].on_enter = Player_State_Falling_Enter;
states[sID_player_falling].on_exit = Player_State_Falling_Exit;
states[sID_player_falling].init = Player_State_Falling_Init;

states[sID_player_dashing].main = Player_State_Dashing;
states[sID_player_dashing].draw = Player_State_Dashing_Draw;
states[sID_player_dashing].on_enter = Player_State_Dashing_Enter;
states[sID_player_dashing].on_exit = Player_State_Dashing_Exit;
states[sID_player_dashing].init = Player_State_Dashing_Init;

states[sID_player_sliding].main = Player_State_Sliding;
states[sID_player_sliding].draw = Player_State_Sliding_Draw;
states[sID_player_sliding].on_enter = Player_State_Sliding_Enter;
states[sID_player_sliding].on_exit = Player_State_Sliding_Exit;
states[sID_player_sliding].init = Player_State_Sliding_Init;

states[sID_player_attacking].main = Player_State_Attacking;
states[sID_player_attacking].draw = Player_State_Attacking_Draw;
states[sID_player_attacking].on_enter = Player_State_Attacking_Enter;
states[sID_player_attacking].on_exit = Player_State_Attacking_Exit;
states[sID_player_attacking].init = Player_State_Attacking_Init;

states[sID_player_recoiling].main = Player_State_Lightning;
states[sID_player_recoiling].draw = Player_State_Lightning_Draw;
states[sID_player_recoiling].on_enter = Player_State_Lightning_Enter;
states[sID_player_recoiling].on_exit = Player_State_Lightning_Exit;
states[sID_player_recoiling].init = Player_State_Lightning_Init;

states[sID_player_slash_a].main = Player_State_SlashA;
states[sID_player_slash_a].draw = Player_State_SlashA_Draw;
states[sID_player_slash_a].on_enter = Player_State_SlashA_Enter;
states[sID_player_slash_a].on_exit = Player_State_SlashA_Exit;
states[sID_player_slash_a].init = Player_State_SlashA_Init;

states[sID_player_slash_b].main = Player_State_SlashB;
states[sID_player_slash_b].draw = Player_State_SlashB_Draw;
states[sID_player_slash_b].on_enter = Player_State_SlashB_Enter;
states[sID_player_slash_b].on_exit = Player_State_SlashB_Exit;
states[sID_player_slash_b].init = Player_State_SlashB_Init;

states[sID_player_slash_c].main = Player_State_SlashC;
states[sID_player_slash_c].draw = Player_State_SlashC_Draw;
states[sID_player_slash_c].on_enter = Player_State_SlashC_Enter;
states[sID_player_slash_c].on_exit = Player_State_SlashC_Exit;
states[sID_player_slash_c].init = Player_State_SlashC_Init;

states[sID_player_lunge].main = Player_State_Lunge;
states[sID_player_lunge].draw = Player_State_Lunge_Draw;
states[sID_player_lunge].on_enter = Player_State_Lunge_Enter;
states[sID_player_lunge].on_exit = Player_State_Lunge_Exit;
states[sID_player_lunge].init = Player_State_Lunge_Init;

states[sID_player_sweep].main = Player_State_Sweep;
states[sID_player_sweep].draw = Player_State_Sweep_Draw;
states[sID_player_sweep].on_enter = Player_State_Sweep_Enter;
states[sID_player_sweep].on_exit = Player_State_Sweep_Exit;
states[sID_player_sweep].init = Player_State_Sweep_Init;

states[sID_player_sideswipe].main = Player_State_Sideswipe;
states[sID_player_sideswipe].draw = Player_State_Sideswipe_Draw;
states[sID_player_sideswipe].on_enter = Player_State_Sideswipe_Enter;
states[sID_player_sideswipe].on_exit = Player_State_Sideswipe_Exit;
states[sID_player_sideswipe].init = Player_State_Sideswipe_Init;

states[sID_player_aerial_a].main = Player_State_AerialA;
states[sID_player_aerial_a].draw = Player_State_AerialA_Draw;
states[sID_player_aerial_a].on_enter = Player_State_AerialA_Enter;
states[sID_player_aerial_a].on_exit = Player_State_AerialA_Exit;
states[sID_player_aerial_a].init = Player_State_AerialA_Init;

states[sID_player_aerial_b].main = Player_State_AerialB;
states[sID_player_aerial_b].draw = Player_State_AerialB_Draw;
states[sID_player_aerial_b].on_enter = Player_State_AerialB_Enter;
states[sID_player_aerial_b].on_exit = Player_State_AerialB_Exit;
states[sID_player_aerial_b].init = Player_State_AerialB_Init;

states[sID_player_aerial_c].main = Player_State_AerialC;
states[sID_player_aerial_c].draw = Player_State_AerialC_Draw;
states[sID_player_aerial_c].on_enter = Player_State_AerialC_Enter;
states[sID_player_aerial_c].on_exit = Player_State_AerialC_Exit;
states[sID_player_aerial_c].init = Player_State_AerialC_Init;

states[sID_player_aerial_down].main = Player_State_Aerial_Down;
states[sID_player_aerial_down].draw = Player_State_Aerial_Down_Draw;
states[sID_player_aerial_down].on_enter = Player_State_Aerial_Down_Enter;
states[sID_player_aerial_down].on_exit = Player_State_Aerial_Down_Exit;
states[sID_player_aerial_down].init = Player_State_Aerial_Down_Init;

states[sID_player_aerial_sweep].main = Player_State_Aerial_Sweep;
states[sID_player_aerial_sweep].draw = Player_State_Aerial_Sweep_Draw;
states[sID_player_aerial_sweep].on_enter = Player_State_Aerial_Sweep_Enter;
states[sID_player_aerial_sweep].on_exit = Player_State_Aerial_Sweep_Exit;
states[sID_player_aerial_sweep].init = Player_State_Aerial_Sweep_Init;

states[sID_player_aerial_lunge].main = Player_State_Aerial_Lunge;
states[sID_player_aerial_lunge].draw = Player_State_Aerial_Lunge_Draw;
states[sID_player_aerial_lunge].on_enter = Player_State_Aerial_Lunge_Enter;
states[sID_player_aerial_lunge].on_exit = Player_State_Aerial_Lunge_Exit;
states[sID_player_aerial_lunge].init = Player_State_Aerial_Lunge_Init;

states[sID_player_pull].main = Player_State_Pull;
states[sID_player_pull].draw = Player_State_Pull_Draw;
states[sID_player_pull].on_enter = Player_State_Pull_Enter;
states[sID_player_pull].on_exit = Player_State_Pull_Exit;
states[sID_player_pull].init = Player_State_Pull_Init;

states[sID_player_push].main = Player_State_Push;
states[sID_player_push].draw = Player_State_Push_Draw;
states[sID_player_push].on_enter = Player_State_Push_Enter;
states[sID_player_push].on_exit = Player_State_Push_Exit;
states[sID_player_push].init = Player_State_Push_Init;

states[sID_player_fists].main = Player_State_Fists;
states[sID_player_fists].draw = Player_State_Fists_Draw;
states[sID_player_fists].on_enter = Player_State_Fists_Enter;
states[sID_player_fists].on_exit = Player_State_Fists_Exit;
states[sID_player_fists].init = Player_State_Fists_Init;

states[sID_player_lightning].main = Player_State_Lightning;
states[sID_player_lightning].draw = Player_State_Lightning_Draw;
states[sID_player_lightning].on_enter = Player_State_Lightning_Enter;
states[sID_player_lightning].on_exit = Player_State_Lightning_Exit;
states[sID_player_lightning].init = Player_State_Lightning_Init;

states[sID_player_laser].main = Player_State_Laser;
states[sID_player_laser].draw = Player_State_Laser_Draw;
states[sID_player_laser].on_enter = Player_State_Laser_Enter;
states[sID_player_laser].on_exit = Player_State_Laser_Exit;
states[sID_player_laser].init = Player_State_Laser_Init;

states[sID_player_grenade].main = Player_State_Grenade;
states[sID_player_grenade].draw = Player_State_Grenade_Draw;
states[sID_player_grenade].on_enter = Player_State_Grenade_Enter;
states[sID_player_grenade].on_exit = Player_State_Grenade_Exit;
states[sID_player_grenade].init = Player_State_Grenade_Init;

states[sID_player_shield].main = Player_State_Shield;
states[sID_player_shield].draw = Player_State_Shield_Draw;
states[sID_player_shield].on_enter = Player_State_Shield_Enter;
states[sID_player_shield].on_exit = Player_State_Shield_Exit;
states[sID_player_shield].init = Player_State_Shield_Init;
