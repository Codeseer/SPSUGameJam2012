var input, output;

input = argument0;
output = false;

switch (input) {
    case key_left: 
        output = joystick_xpos(1) < -.5;
        break;
    case key_right:
        output = joystick_xpos(1) > .5;
        break;
    case key_up:
        output = joystick_ypos(1) < -.5;
        break;
    case key_down:
        output = joystick_ypos(1) > .5;
        break;
    case key_jump:
        output = joystick_check_button(1, joy_jump);
        break;
    case key_btn1:
        output = joystick_check_button(1, joy_btn1);
        break;
    case key_btn2:
        output = joystick_check_button(1, joy_btn2);
        break;
    case key_btn3:
        output = joystick_check_button(1, joy_btn3);
        break;
    case key_btn4:
        output = joystick_check_button(1, joy_btn4);
        break;
    
        
}

return output;
