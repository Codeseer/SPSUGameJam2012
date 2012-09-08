//get rid of the particle emitter to avoid memory leaks
part_emitter_destroy_all(ps);
part_system_destroy(ps);
instance_destroy();
