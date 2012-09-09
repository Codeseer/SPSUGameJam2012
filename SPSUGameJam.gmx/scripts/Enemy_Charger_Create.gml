Enemy_Create();

lateral_max = 7;
lateral_cap = lateral_max;
lateral_accel = 1.8;
lateral_pressed = false;

sprite_stand = charger_stand_sprite;
sprite_patrol = charger_patrol_sprite;
sprite_rush = charger_rush_sprite;
sprite_recoil = charger_recoil_sprite;
sprite_shout = charger_shout_sprite;

state = states[sID_charger_standing];
state_next = state;
state_last = state;

Charger_State_Standing_Init();
Charger_State_Patrolling_Init();
Charger_State_Rushing_Init();
Charger_State_Recoiling_Init();

Charger_State_Standing_Enter();
