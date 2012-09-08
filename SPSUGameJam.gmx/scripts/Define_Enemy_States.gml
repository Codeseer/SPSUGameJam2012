
states[sID_charger_standing] = instance_create(0, 0, State_object);
states[sID_charger_patrolling] = instance_create(0, 0, State_object);
states[sID_charger_rushing] = instance_create(0, 0, State_object);
states[sID_charger_recoiling] = instance_create(0, 0, State_object);

states[sID_charger_standing].main = Charger_State_Standing;
states[sID_charger_standing].draw = Charger_State_Standing_Draw;
states[sID_charger_standing].on_enter = Charger_State_Standing_Enter;
states[sID_charger_standing].on_exit = Charger_State_Standing_Exit;
states[sID_charger_standing].init = Charger_State_Standing_Init;

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
