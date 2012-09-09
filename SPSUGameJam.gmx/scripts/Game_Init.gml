Define_Global_States();

globalvar world_gravity, world_friction;

world_gravity = 2.5;
world_friction = 1.6;
GameData.target_x = -1;
GameData.target_y = -1;
global.use_joystick = false;
global.paused = false;

if (os_type == os_windows && os_browser == browser_not_a_browser) {
    if (joystick_exists(1)) {
        if (show_question("We've detected a Gamepad, would you like to use it?")) {
            global.use_joystick = true;
        }
    }
}

sound_loop(bgm1);

room_goto_next();
