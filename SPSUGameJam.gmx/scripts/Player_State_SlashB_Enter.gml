animation_length = sprite_get_number(sprite_attack[1]);
animation_speed = 1.2;
animation_index = 0;

var a;
a = instance_create(x, y, AttackHitbox);
a.sprite_index = sprite_attack[1];
sound_play(choose(attack0_sfx, attack1_sfx, attack2_sfx));
