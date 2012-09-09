
patrol_duration = room_speed * 2 + random(room_speed * 3);
patrol_timer = 0;

patrol_direction = -1 + 2 * (random(1) && 1);
lateral_max = sign(patrol_direction) * lateral_cap;

animation_speed = 1;
animation_length = sprite_get_number(sprite_patrol);
animation_index = 0;
