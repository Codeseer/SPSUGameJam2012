
states[sID_charger_patrolling] = instance_create(0, 0, State_object);
states[sID_charger_patrolling] = instance_create(0, 0, State_object);
states[sID_charger_rushing] = instance_create(0, 0, State_object);
states[sID_charger_recoiling] = instance_create(0, 0, State_object);
states[sID_charger_shouting] = instance_create(0, 0, State_object);

states[sID_charger_patrolling].main = Charger_State_Patrolling;
states[sID_charger_patrolling].draw = Charger_State_Patrolling_Draw;
states[sID_charger_patrolling].on_enter = Charger_State_Patrolling_Enter;
states[sID_charger_patrolling].on_exit = Charger_State_Patrolling_Exit;
states[sID_charger_patrolling].init = Charger_State_Patrolling_Init;

states[sID_charger_patrolling].main = Charger_State_Patrolling;
states[sID_charger_patrolling].draw = Charger_State_Patrolling_Draw;
states[sID_charger_patrolling].on_enter = Charger_State_Patrolling_Enter;
states[sID_charger_patrolling].on_exit = Charger_State_Patrolling_Exit;
states[sID_charger_patrolling].init = Charger_State_Patrolling_Init;

states[sID_charger_rushing].main = Charger_State_Rushing;
states[sID_charger_rushing].draw = Charger_State_Rushing_Draw;
states[sID_charger_rushing].on_enter = Charger_State_Rushing_Enter;
states[sID_charger_rushing].on_exit = Charger_State_Rushing_Exit;
states[sID_charger_rushing].init = Charger_State_Rushing_Init;

states[sID_charger_recoiling].main = Charger_State_Recoiling;
states[sID_charger_recoiling].draw = Charger_State_Recoiling_Draw;
states[sID_charger_recoiling].on_enter = Charger_State_Recoiling_Enter;
states[sID_charger_recoiling].on_exit = Charger_State_Recoiling_Exit;
states[sID_charger_recoiling].init = Charger_State_Recoiling_Init;

states[sID_charger_shouting].main = Charger_State_Shouting;
states[sID_charger_shouting].draw = Charger_State_Shouting_Draw;
states[sID_charger_shouting].on_enter = Charger_State_Shouting_Enter;
states[sID_charger_shouting].on_exit = Charger_State_Shouting_Exit;
states[sID_charger_shouting].init = Charger_State_Shouting_Init;


states[sID_crawler_patrolling] = instance_create(0, 0, State_object);
states[sID_crawler_rushing] = instance_create(0, 0, State_object);
states[sID_crawler_recoiling] = instance_create(0, 0, State_object);

states[sID_crawler_patrolling].main = Crawler_State_Patrolling;
states[sID_crawler_patrolling].draw = Crawler_State_Patrolling_Draw;
states[sID_crawler_patrolling].on_enter = Crawler_State_Patrolling_Enter;
states[sID_crawler_patrolling].on_exit = Crawler_State_Patrolling_Exit;
states[sID_crawler_patrolling].init = Crawler_State_Patrolling_Init;

states[sID_crawler_rushing].main = Crawler_State_Rushing;
states[sID_crawler_rushing].draw = Crawler_State_Rushing_Draw;
states[sID_crawler_rushing].on_enter = Crawler_State_Rushing_Enter;
states[sID_crawler_rushing].on_exit = Crawler_State_Rushing_Exit;
states[sID_crawler_rushing].init = Crawler_State_Rushing_Init;

states[sID_crawler_recoiling].main = Crawler_State_Recoiling;
states[sID_crawler_recoiling].draw = Crawler_State_Recoiling_Draw;
states[sID_crawler_recoiling].on_enter = Crawler_State_Recoiling_Enter;
states[sID_crawler_recoiling].on_exit = Crawler_State_Recoiling_Exit;
states[sID_crawler_recoiling].init = Crawler_State_Recoiling_Init;

states[sID_melee_patrolling] = instance_create(0, 0, State_object);
states[sID_melee_rushing] = instance_create(0, 0, State_object);
states[sID_melee_attacking] = instance_create(0, 0, State_object);
states[sID_melee_recoiling] = instance_create(0, 0, State_object);
states[sID_melee_fleeing] = instance_create(0, 0, State_object);
states[sID_melee_failing] = instance_create(0, 0, State_object);

states[sID_melee_patrolling].main = Melee_State_Patrolling;
states[sID_melee_patrolling].draw = Melee_State_Patrolling_Draw;
states[sID_melee_patrolling].on_enter = Melee_State_Patrolling_Enter;
states[sID_melee_patrolling].on_exit = Melee_State_Patrolling_Exit;
states[sID_melee_patrolling].init = Melee_State_Patrolling_Init;

states[sID_melee_rushing].main = Melee_State_Rushing;
states[sID_melee_rushing].draw = Melee_State_Rushing_Draw;
states[sID_melee_rushing].on_enter = Melee_State_Rushing_Enter;
states[sID_melee_rushing].on_exit = Melee_State_Rushing_Exit;
states[sID_melee_rushing].init = Melee_State_Rushing_Init;

states[sID_melee_attacking].main = Melee_State_Attacking;
states[sID_melee_attacking].draw = Melee_State_Attacking_Draw;
states[sID_melee_attacking].on_enter = Melee_State_Attacking_Enter;
states[sID_melee_attacking].on_exit = Melee_State_Attacking_Exit;
states[sID_melee_attacking].init = Melee_State_Attacking_Init;

states[sID_melee_recoiling].main = Melee_State_Recoiling;
states[sID_melee_recoiling].draw = Melee_State_Recoiling_Draw;
states[sID_melee_recoiling].on_enter = Melee_State_Recoiling_Enter;
states[sID_melee_recoiling].on_exit = Melee_State_Recoiling_Exit;
states[sID_melee_recoiling].init = Melee_State_Recoiling_Init;

states[sID_melee_fleeing].main = Melee_State_Fleeing;
states[sID_melee_fleeing].draw = Melee_State_Fleeing_Draw;
states[sID_melee_fleeing].on_enter = Melee_State_Fleeing_Enter;
states[sID_melee_fleeing].on_exit = Melee_State_Fleeing_Exit;
states[sID_melee_fleeing].init = Melee_State_Fleeing_Init;

states[sID_melee_failing].main = Melee_State_Failing;
states[sID_melee_failing].draw = Melee_State_Failing_Draw;
states[sID_melee_failing].on_enter = Melee_State_Failing_Enter;
states[sID_melee_failing].on_exit = Melee_State_Failing_Exit;
states[sID_melee_failing].init = Melee_State_Failing_Init;
