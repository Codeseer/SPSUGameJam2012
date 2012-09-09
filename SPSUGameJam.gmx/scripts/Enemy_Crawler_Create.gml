Enemy_Create();

lateral_max = 5;
lateral_cap = lateral_max;
lateral_accel = 1.8;
lateral_pressed = false;

sprite_stand = crawler_stand_sprite;
sprite_patrol = crawler_patrol_sprite;
sprite_rush = crawler_rush_sprite;
sprite_recoil = crawler_recoil_sprite;
sprite_fire = crawler_fire_sprite;

state = states[sID_crawler_patrolling];
state_next = state;
state_last = state;

Crawler_State_Patrolling_Init();
Crawler_State_Rushing_Init();
Crawler_State_Recoiling_Init();

Crawler_State_Patrolling_Enter();
