instance_create(x, y, Camera);
instance_create(x, y, HUD);

hp = 10;
hp_max = 100;
mana = 90;
key_left = vk_left;     key_left_alt = vk_numpad4;
key_right = vk_right;   key_right_alt = vk_numpad6;
key_up = vk_up;         key_up_alt = vk_numpad8;
key_down = vk_down;     key_down_alt = vk_numpad5;
key_jump = vk_space;    key_jump_alt = ord('Z');

joy_jump = 2;   joy_jump_last = false;
joy_btn1 = 7;   joy_btn1_last = false;
joy_btn2 = 6;   joy_btn2_last = false;
joy_btn3 = 8;   joy_btn3_last = false;
joy_btn4 = 5;   joy_btn4_last = false;
joy_x_last = 0;
joy_y_last = 0;

key_btn1 = ord('1');
key_btn2 = ord('2');
key_btn3 = ord('3');
key_btn4 = ord('4');

key_btn1_alt = ord('Q');
key_btn2_alt = ord('W');
key_btn3_alt = ord('E');
key_btn4_alt = ord('R');

power1 = states[sID_player_fists];
power2 = states[sID_player_grenade];
power3 = states[sID_player_lightning];

for (i = 0; i < 4; i += 1) {
    melee[i] = 0;
    range[i] = 1;
    mobile[i] = 0;
}

xspd = 0;
yspd = 0;

lateral_max = 11;
lateral_cap = lateral_max;
lateral_accel = 1.8;
lateral_pressed = false;

jump_held = false;
jump_force = 22;

vertical_cap = jump_force * 2;

state = states[sID_player_standing];
state_next = state;
state_last = state;

sprite_stand        = player_stand_sprite;
sprite_idle         = player_stand_sprite;
sprite_run          = player_run_sprite;
sprite_turn         = playermask_sprite;
sprite_jump         = player_jump_sprite;
sprite_fall         = player_fall_sprite;
sprite_slide        = wallslide_sprite;
sprite_recoil       = player_fall_sprite;
sprite_glide        = playermask_sprite;
sprite_dash         = player_run_sprite;

sprite_attack[0]    = attack0_sprite;
sprite_attack[1]    = attack1_sprite;
sprite_attack[2]    = attack2_sprite;

sprite_aerial[0]    = aerial0_sprite;
sprite_aerial[1]    = aerial1_sprite;
sprite_aerial[2]    = aerial2_sprite;

sprite_attack_lunge = attack1_sprite;
sprite_attack_sweep = sweep_sprite;
sprite_sideswipe    = sideswipe_sprite;

sprite_aerial_sweep = aerial_sweep_sprite;
sprite_aerial_down  = aerial_down_sprite;
sprite_aerial_lunge = attack1_sprite;

sprite_melee[0]     = sprite49;
sprite_melee[1]     = sprite49;
sprite_melee[2]     = playermask_sprite;
sprite_melee[3]     = playermask_sprite;

sprite_range[0]     = sprite49;
sprite_range[1]     = sprite49;
sprite_range[2]     = sprite49;
sprite_range[3]     = playermask_sprite;

animation_index = 0;
animation_speed = 0;
animation_length = 0;

Player_State_Standing_Init();
Player_State_Running_Init();
Player_State_Jumping_Init();
Player_State_Falling_Init();
Player_State_Dashing_Init();
Player_State_Sliding_Init();
Player_State_Attacking_Init();
Player_State_Recoiling_Init();

Player_State_SlashA_Init();
Player_State_SlashB_Init();
Player_State_SlashC_Init();
Player_State_Lunge_Init();
Player_State_Sweep_Init();

Player_State_AerialA_Init();
Player_State_AerialB_Init();
Player_State_AerialC_Init();
Player_State_Aerial_Lunge_Init();
Player_State_Aerial_Sweep_Init();
Player_State_Aerial_Down_Init();

Player_State_Pull_Init();
Player_State_Push_Init();
Player_State_Fists_Init();
Player_State_Lightning_Init();
Player_State_Laser_Init();
Player_State_Grenade_Init();

Player_State_Standing_Enter();
