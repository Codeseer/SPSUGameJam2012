yspd = -jump_force + min(jump_force * .8, (jump_number / 2) * (jump_number / 2));
jump_held = true;
jump_number += 1;

sound_play(jump_sfx);
