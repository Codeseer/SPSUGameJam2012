y += yspd ;
draw_timer += 1;
if(draw_timer>room_speed) {
    instance_destroy();
}
