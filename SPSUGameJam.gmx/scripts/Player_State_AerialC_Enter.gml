animation_length = sprite_get_number(sprite_aerial[2]);
animation_speed = .7;
animation_index = 0;

slash_next = false;

yspd = -world_gravity * animation_length / 4;

var a;
a = instance_create(x, y, AttackHitbox);
a.sprite_index = sprite_aerial[2];
sound_play(choose(attack0_sfx, attack1_sfx, attack2_sfx));
