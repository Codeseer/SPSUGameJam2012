yspd += world_gravity;

with (Player) {
    if (Get_Input_Released(other.key)) {
        other.held = false;
        sound_play(grenade_explode_sfx);
    }
}

if (!held) {
    yspd = 0;
    xspd = 0;
    life -= 1;
}

if (!life) {
    instance_destroy();
}
var a;
a = yspd;
Move_X();
Move_Y();
xspd *= .99;
if (place_meeting(x, y + 1, Solid) || place_meeting(x, y + 1, Solid)) {
    if (yspd == 0) {
        if (a) {
            yspd = -a / 2;
            xspd *= .7;
        }
    }
}
