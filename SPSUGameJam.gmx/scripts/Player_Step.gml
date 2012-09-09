script_execute(state.main);
if (global.use_joystick) {
    joy_jump_last = joystick_check_button(1, joy_jump);
    joy_btn1_last = joystick_check_button(1, joy_btn1);
    joy_btn2_last = joystick_check_button(1, joy_btn2);
    joy_btn3_last = joystick_check_button(1, joy_btn3);
    joy_btn4_last = joystick_check_button(1, joy_btn4);
    joy_x_last = joystick_xpos(1);
    joy_y_last = joystick_ypos(1);
}
