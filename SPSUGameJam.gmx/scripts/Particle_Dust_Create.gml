ps = part_system_create();
pe = part_emitter_create(ps);
//create an emiter at the origin of the Dust object with a small offset on the x
part_emitter_region(ps, pe, x-10,x,y,y,ps_shape_line, ps_distr_linear);

pt = part_type_create();
part_type_sprite(pt,particle_dust_sprite,false,false,false);
//set the particle to move at 2 px per step
part_type_speed(pt,0.8,0.8,0,0);
//set the particle direction to up
part_type_direction(pt,90,90,0,0);
//particle speed decreases at 0.1 px per step twords botom
part_type_gravity(pt,0.07,270);
//set the particle to only last for 1 second
part_type_life(pt,room_speed,room_speed);
//particle will fade out
part_type_alpha2(pt,1,0);
part_type_scale(pt,0.5,0.5);
//particle will get larger over time
part_type_size(pt,0.98,1.02,0.01,0);

//burst 3 dust particles
part_emitter_burst(ps,pe,pt,3);

//delete the dust particle object after one second
alarm[0] = room_speed;
