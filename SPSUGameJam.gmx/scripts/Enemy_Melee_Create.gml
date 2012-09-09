Enemy_Create();

lateral_max = 6;
lateral_cap = lateral_max;
lateral_accel = 1.8;
lateral_pressed = false;

sprite_rush = melee_walk_sprite;
sprite_recoil = melee_recoil_sprite;
sprite_attack = melee_attack_sprite;
sprite_fail = melee_fail_sprite;
sprite_flee = melee_flee_sprite;

state = states[sID_melee_patrolling];
state_next = state;
state_last = state;

Melee_State_Patrolling_Init();
Melee_State_Rushing_Init();
Melee_State_Attacking_Init();
Melee_State_Failing_Init();
Melee_State_Recoiling_Init();

Melee_State_Patrolling_Enter();
