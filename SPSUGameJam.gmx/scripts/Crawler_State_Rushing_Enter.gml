lateral_max = -sign(x - Player.x) * lateral_cap;
xspd = lateral_max;

animation_index = 0;
animation_speed = 1;
animation_length = sprite_get_number(sprite_rush);